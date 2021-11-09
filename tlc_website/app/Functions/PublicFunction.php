<?php
use Carbon\Carbon;
use Stichoza\GoogleTranslate\GoogleTranslate;


function loadImage($image){
	return asset('').$image;
}

function formatDateDB($date){
	return Carbon::parse($date)->format('Y/m/d');
}

function formatShowDate($date){
	return Carbon::parse($date)->format('M d,Y');
}

function translate($string){ 
	$lang = \Session::get('lang');

	return GoogleTranslate::trans($string, $lang);
}