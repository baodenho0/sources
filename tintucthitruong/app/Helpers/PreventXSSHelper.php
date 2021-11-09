<?php 
namespace App\Helpers;

class PreventXSSHelper
{
	public function run($content){
		$content = str_replace('<', '&#60;', $content);
		$content = str_replace('>', '&#62;', $content);
		return $content;
	}

}