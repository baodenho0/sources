<?php
namespace App\Helpers\CrawlHelper;
require "simple_html_dom.php";

class CrawlHelper
{
	private function run($link){
		try {

		$ch = curl_init($link);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        $content = curl_exec($ch);
        curl_close($ch);
        $dom = str_get_html($content);
        return $dom;  

		} catch (\Exception $e) {
			\Log::info($e);
		}
		   
	}
	// private function generalCrawlVietNamNet($url){
	// 	$arr = [];
	// 	$dom = $this->run($url);	
 //        $content = $dom->find("div.clearfix.item");      
         
 //        foreach ($content as $value) {
 //            $url = "https://vietnamnet.vn".$value->find("a",0)->href;
 //            $body = $this->run($url);
 //            $content = $body->find("#ArticleContent",0);
 //            $arr[] = [
 //                'title' => $value->find("a img",0)->alt,
 //                'url' => $url,
 //                'image' => $value->find("a img",0)->src,
 //                'short_content' => $value->find("div.lead",0)->innertext,
 //                'content' => $content
 //            ];            
 //        }
 //        return $arr;
	// }
	/**
	 * https://www.wikifx.com/vn_en/search.html
	 * @return html
	 */
	public function crawlBrokers(){
		$url = "https://www.wikifx.com/vn_en/search.html";

		$dom = $this->run($url);	
        $content = $dom->find("ul.fx-dealers-list",0);

        $css = "<link href=\"https://www.wikifx.com/Contentgj/css/page_market.css\" rel=\"stylesheet\" />";


        $result = $css.$content;

        return $result;

	}
	
	
}