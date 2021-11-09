<?php

namespace App\Helpers;

class ImageHelper
{
    public function CreateThumbImage($filenameImage, $filenameThumb, $ext)
    {

        if($ext == "jpeg" || $ext == "jpg")
        {

            $image = imagecreatefromjpeg($filenameImage);

        }
        if($ext == "png")
        {
            $image = imagecreatefrompng($filenameImage);
        }
        $filename = $filenameThumb;

        

        $width = imagesx($image);
        $height = imagesy($image);

        $thumb_width = ($height*4)/3;
        $thumb_height = $height;

        $original_aspect = $width / $height;
        $thumb_aspect = $thumb_width / $thumb_height;

        if ( $original_aspect >= $thumb_aspect )
        {
           // If image is wider than thumbnail (in aspect ratio sense)
           $new_height = $thumb_height;
           $new_width = $width / ($height / $thumb_height);
        }
        else
        {
           // If the thumbnail is wider than the image
           $new_width = $thumb_width;
           $new_height = $height / ($width / $thumb_width);
        }

        $thumb = imagecreatetruecolor( $thumb_width, $thumb_height );

        switch ($ext) {
            case 'png':
                // integer representation of the color black (rgb: 0,0,0)
                $background = imagecolorallocate($thumb , 0, 0, 0);
                // removing the black from the placeholder
                imagecolortransparent($thumb, $background);

                // turning off alpha blending (to ensure alpha channel information
                // is preserved, rather than removed (blending with the rest of the
                // image in the form of black))
                imagealphablending($thumb, false);

                // turning on alpha channel information saving (to ensure the full range
                // of transparency is preserved)
                imagesavealpha($thumb, true);
                break;

            default:
                break;
        }

        // Resize and crop
        imagecopyresampled($thumb,
                           $image,
                           0 - ($new_width - $thumb_width) / 2, // Center the image horizontally
                           0 - ($new_height - $thumb_height) / 2, // Center the image vertically
                           0, 0,
                           $new_width, $new_height,
                           $width, $height);
        switch ($ext) {
            case 'jpg':
            case 'jpeg':
            {
                imagejpeg($thumb, $filename, 100);break;
            }
            case 'png':
            {
                imagepng($thumb,$filename,1);break;
            }
            default:
            {
                imagejpeg($thumb, $filename, 100);
            }
        }
        return 1;
    }
	public function uploadImageSummerNote($content){ 
        $dom = new \DomDocument();
        libxml_use_internal_errors(true);
        $dom->loadHtml('<?xml encoding="utf-8" ?>' .$content);
        $images = $dom->getElementsByTagName('img');

        foreach($images as $k => $img){
            $data = $img->getAttribute('src');

            if($data){
                try {
                    list($type, $data) = explode(';', $data);
                    list(, $data)      = explode(',', $data);
                    $data = base64_decode($data);
                    $filename = time().$k.'.png';
                    $path = "uploads/posts/" . $filename;
                    $pathUpload = public_path() .'/'. $path;
                    file_put_contents($pathUpload, $data);

                    $img->removeAttribute('src');
                    $img->setAttribute('src', "/uploads/posts/".$filename);

                } catch (\Exception $e) {
                  // \Log::info($e);
                  continue;
                }

            }
        }
        $content = $dom->saveHTML();
        // \Log::info($content);
        return $content;
    }
}