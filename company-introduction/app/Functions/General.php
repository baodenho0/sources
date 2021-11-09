<?php

namespace App\Functions;

class General{
	public static function uploadImage($checkImage, $requestImage, $nameImageDB){
		if($checkImage){            
            $img = $requestImage;
            $img_name = str_random(4)."-".$img->getClientOriginalName();
            if(!empty($nameImageDB)){
            	if(file_exists('upload/images/'.$nameImageDB)){
               	 	unlink('upload/images/'.$nameImageDB);
            	}
            }            
            $img->move('upload/images',$img_name);
            return $img_name;
        }
	}
    /**
     * Auto upload image to SummerNote 
     * @param  $detail is SummerNote content
     * @return $detail 
     */
    public static function uploadImageSummerNote($detail){
        $dom = new \DomDocument();
        $dom->loadHtml('<?xml encoding="utf-8" ?>' .$detail);   
        $images = $dom->getElementsByTagName('img');

        foreach($images as $k => $img){
            $data = $img->getAttribute('src');
            if($data){
                try {
                    list($type, $data) = explode(';', $data);
                    list(, $data)      = explode(',', $data);
                    $data = base64_decode($data);
                    $image_name= "/upload/summer_note/" . time().$k.'.png';
                    $path = public_path() . $image_name;
                    file_put_contents($path, $data);
                    $img->removeAttribute('src');
                    $img->setAttribute('src', $image_name);
                } catch (\Exception $e) {
                    continue;
                }
                
            }            
        }
        $detail = $dom->saveHTML();
        return $detail;
    }
}