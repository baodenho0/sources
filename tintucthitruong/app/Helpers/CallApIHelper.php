<?php

namespace App\Helpers;

class CallApIHelper
{

	public function Call($url,$method){
		// $data = array("name" => "Hagrid", "age" => "36");
		// $data_string = json_encode($data);
		try {
			$curl = curl_init($url);
			curl_setopt($curl, CURLOPT_CUSTOMREQUEST, $method);
			// curl_setopt($curl, CURLOPT_POSTFIELDS, $data_string);
			curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
			curl_setopt($curl, CURLOPT_HTTPHEADER, array(
			    'Content-Type: application/json'
			    // 'Content-Length: ' . strlen($data_string)
			)
			);
			$result = curl_exec($curl);
			curl_close($curl);
			return $result;
		} catch (\Exception $e) {
			\Log::info($e);
		}

		
	}

}