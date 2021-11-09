<?php

namespace App\Http\Controllers\Website;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\About;
use App\Country;
use App\HopTac;
use PHPMailer\PHPMailer;

class HopTacController extends Controller
{
	private $about;
	private $country;
  
	public function __construct(){
		$this->about = new About;
		$this->country = new Country;
     
	}

   	public function index(){
		   $data['about'] = $this->about->find(4);
		   $data['country'] = $this->country->getAll();
   		return view('website.hop-tac.index',$data);
	   }
	   
	public function post(Request $request){

		if($request->name=="" || $request->phone=="" || $request->email=="" || $request->surname=="" || $request->country=="" || $request->business=="" || $request->website=="" || $request->agency=="" || $request->customer=="")
			return response()->json(['status' => 'success', 'message' => 'Vui lòng nhập đủ thông tin']);

		$hoptac = new HopTac;
		if($hoptac->where('phone',$request->phone)->orwhere('email',$request->email)->count())
		{
			return response()->json(['status' => 'success', 'message' => 'Bạn đã gửi từ trước, vui lòng liên hệ để được hổ trợ.']);
		}
		
		
    	$hoptac = new HopTac;
    	
		$hoptac->name = $request->name;
		$hoptac->surname = $request->surname;
		$hoptac->country = $request->country;
    	$hoptac->phone = $request->phone;
		$hoptac->email = $request->email;
		$hoptac->business = $request->business;
		$hoptac->website = $request->website;
		$hoptac->agency = $request->agency;
		$hoptac->customer = $request->customer;

        //$contact->description = $request->description;
    	
		
		try{
			$text             = 'Chúc mừng '.$request->name.' đã đăng ký hợp tác, Vui lòng chờ Futures Rapid duyệt.';
			$mail             = new PHPMailer\PHPMailer(true); // create a n
			$mail->SMTPOptions = array(
                'ssl' => array(
                    'verify_peer' => false,
                    'verify_peer_name' => false,
                    'allow_self_signed' => true
                )
			);
			$mail->isSMTP();
			$mail->Host = "smtp.gmail.com";
			//$mail->SMTPDebug  = 1; // debugging: 1 = errors and messages, 2 = messages only
			$mail->SMTPAuth   = true; // authentication enabled
			
			$mail->SMTPSecure = 'tls'; // secure transfer enabled REQUIRED for Gmail
			
			$mail->Port       = 587; // or 587
			$mail->IsHTML(true);
			$mail->Username = "minhhuysto@gmail.com";
			$mail->Password = "fxnbfudgkxvbjkag";
			$mail->SetFrom("minhhuysto@gmail.com", 'Futures Rapid');
			$mail->Subject = "Futures Rapid - Dang ky hop tac";
			$mail->Body    = $text;
			$mail->AddAddress($request->email, $request->name);
			$mail->addCC("minhhuysto@gmail.com");
			if ($mail->send()) {
				$hoptac->save();
				
				return response()->json(['status' => 'success', 'message' => 'Đăng ký hợp tác thành công, vui lòng kiểm tra email để biết thêm thông tin!']);
				
			} else {
				return response()->json(['status' => 'success', 'message' => 'Vui lòng kiểm tra lại email']);
			}
		} catch (\Exception $e) {
			\Log::info($e);
			return response()->json(['status' => 'error', 'message' => 'Lỗi, vui lòng kiểm tra lại email']);
		}
		
	}
    
}
