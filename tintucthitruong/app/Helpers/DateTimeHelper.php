<?php

namespace App\Helpers;
use Carbon\Carbon;

class DateTimeHelper
{
	public function getDateNow(){        
        return Carbon::now()->format("Y-m-d");       
    }

    public function formatDate($date){
    	return Carbon::parse($date)->format("d-m-Y");
    }

    public function formatArrDate($query){
        foreach ($query as $key => $value) {
            $query[$key]->created_at_format = $this->formatDate($value->created_at);
        }

        return $query;
    }

    public function formatArrDateTime($query){
        // echo $query;die;dd('dd');
        foreach ($query as $key => $value) {
            $query[$key]->created_at_format = Carbon::parse($value->created_at)->format("d-m-Y H:i");
        }

        return $query;
    }
}