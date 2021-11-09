<?php

namespace App\Http\Controllers\Website;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Register;
use App\Country;
use App\Logo;
use PHPMailer\PHPMailer;

class RegisterController extends Controller
{
	private $contact;
  
	public function __construct(){
		$this->register = new Register;
		$this->country = new Country;
     
	}

   	public function index(){
		   $data['country'] = $this->country->getAll();
   		return view('website.register.index',$data);
	}
	
	public function post(Request $request){

		if($request->name=="" || $request->phone=="" || $request->email=="")
			return response()->json(['status' => 'success', 'message' => 'Vui lòng nhập đủ thông tin']);

		$register = new Register;
		if($register->where('phone',$request->phone)->orwhere('email',$request->email)->count())
		{
			return response()->json(['status' => 'success', 'message' => 'Bạn đã tạo tài khoản từ trước, vui lòng liên hệ để được hổ trợ.']);
		}
		$range = Logo::first();
		if($range->register_count == $range->register_number){
			return response()->json(['status' => 'error', 'message' => 'Hiện tại đã hết tài khoản dùng thử, vui lòng liên hệ quản trị.']);
		}
		$check_random = 1;
		$random_number = 0;
		while($check_random){
			$random_number = rand($range->range_begin , $range->range_end);
			if(!$register->where('user',$random_number)->count())
			{
				$check_random = 0;
			}
		}
		
    	$register = new Register;
    	
		$register->name = $request->name;
		$register->province = $request->province;
		$register->country = $request->country;
    	$register->phone = $request->phone;
		$register->email = $request->email;
		$register->user = $random_number;
		$register->password = $range->register_password;
        //$contact->description = $request->description;
    	
		
		try{
			$text = 'Dear Valued Customer '.$request->name.'<br>Kính gửi Quý Khách '.$request->name;
			$text += '<br>Thank you for choosing trade with Futures Rapid! We are pleased to advise that your Account has been successfully set up.<br>Cám ơn Quý khách đã chọn Futures Rapid đồng hành cùng giao dịch của Quý khách ! Chúng tôi rất vui khi thông báo của Quý khách, tài khoản của Quý khách đã được mở thành công';
			$text += '<br> Your MT Account Number: '.$random_number.'<br> Tài khoản MT của Quý khách: '.$random_number.'<br> Temporary Password: '.$range->register_password.'<br> Mật khẩu tạm thời: '.$range->register_password;
			$text += '<br>Server: fxAtommarkets Live';
			$text += '<br><br>Remark: Once you are in the real time trading server, please change your password. It is essential to do so for account security purpose.';
			$text += '<br>Lưu ý: Để đảm bảo an toàn cho tài khoản của Quý khách, Quý khách cần phải thay đổi mật khẩu ngay khi Quý khách đăng nhập vào hệ thống giao dịch';
			$text += "<br><br>If you have any questions, please don't hesiate to end us Email minhhuysto@gmail.com or contact our online customer service for help. We hope that you will enjoy the margin trading services that Futures Rapid has to offer.";
			$text += "<br>Nếu Quý khách có gặp bất cứ vấn đề gì, xin Quý khách liên hệ với đội ngũ chăm sóc khách hàng trực tuyến của chúng tôi hoặc gửi Email tới minhhuysto@gmail.com để được trợ giúp. Chúng tôi chân thành hy vọng Quý khách sẽ giao dịch thành công tốt đẹp, đồng thời cũng sẽ hài lòng với dịch vụ mà Futures Rapid của chúng tôi cung cấp.";
			$text += "<br><br>Yours sincerely,<br><B>Futures Rapid</B> Group";
			
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
			$mail->Subject = utf8_encode("Thông tin tài khoản giao dịch Futures Rapid");
			$mail->Body    = $text;
			$mail->AddAddress($request->email, $request->name);
			$mail->addCC("minhhuysto@gmail.com");
			if ($mail->send()) {
				$register->save();
				Logo::where('id',1)->update(['register_count'=>$range->register_count+1]);
				return response()->json(['status' => 'success', 'message' => 'Đăng ký thành công, vui lòng kiểm tra email để biết thêm thông tin!']);
				
			} else {
				return response()->json(['status' => 'success', 'message' => 'Vui lòng kiểm tra lại email']);
			}
		} catch (\Exception $e) {
			\Log::info($e);
			return response()->json(['status' => 'error', 'message' => 'Lỗi, vui lòng kiểm tra lại email']);
		}
		
	}
    
}
