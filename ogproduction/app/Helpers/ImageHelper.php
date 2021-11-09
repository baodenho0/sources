<?php

namespace App\Helpers;

class ImageHelper
{
	public function uploadImageSummerNote($content){
        $dom = new \DomDocument();
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