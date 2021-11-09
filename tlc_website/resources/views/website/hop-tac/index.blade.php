@extends("website.layouts.master")
@section("title",'Hợp Tác')
@section("content")

<div class="financity-page-wrapper" id="financity-page-wrapper">
    <div class="">
        <div class="gdlr-core-pbf-wrapper " style="padding: 200px 0px 200px 0px;" id="gdlr-core-wrapper-1">
            <div class="gdlr-core-pbf-background-wrap">
                <div class="gdlr-core-pbf-background gdlr-core-parallax gdlr-core-js" style="background-image: url({{$about->image}}); background-size: cover; background-position: center center; height: 452.6px; transform: translate(0px, -32.9906px);" data-parallax-speed="0.2"></div>
            </div>
            <div class="gdlr-core-pbf-wrapper-content gdlr-core-js ">
                <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                </div>
            </div>
        </div>
        

		<div class="gdlr-core-pbf-wrapper  gdlr-core-hide-in-tablet-mobile" style="padding: 0px 0px 0px 0px;" data-skin="Purple Personnel">
			<div class="gdlr-core-pbf-background-wrap" ></div>
			<div class="gdlr-core-pbf-wrapper-content gdlr-core-js ">
				<div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
					<div class="gdlr-core-pbf-column gdlr-core-column-30 gdlr-core-column-first">
						<div class="gdlr-core-pbf-column-content-margin gdlr-core-js " style="padding: 20px 40px 55px 0px; height: 607px;" data-sync-height="half-height">
							<div class="gdlr-core-pbf-column-content clearfix gdlr-core-js  gdlr-core-sync-height-content">
								<div class="gdlr-core-pbf-element">
									
								</div>
								<div class="gdlr-core-pbf-element">
									<div class="gdlr-core-text-box-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-left-align">
										<div class="" style="font-size: 18px ;text-transform: none ;">
											  
										{!!$about->leftcontent!!}

										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="gdlr-core-pbf-column gdlr-core-column-30" style="padding: 60px 0px 0px 0px;">
					
							<form action="/register-hop-tac" method="post" id="registeradd" novalidate="novalidate">
								<input type="hidden" name="_token" id="token" value="{{ csrf_token() }}">
								<div class="gdlr-core-input-wrap gdlr-core-large gdlr-core-full-width gdlr-core-with-column gdlr-core-no-border">
									<div class="gdlr-core-column-30">
										<span class="wpcf7-form-control-wrap your-name">
											<input type="text" name="your-name" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" placeholder="Tên*">
										</span>
									</div>
									<div class="gdlr-core-column-30">
										<span class="wpcf7-form-control-wrap your-name">
											<input type="text" name="your-surname" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" placeholder="Họ*">
										</span>
									</div>
									<div class="clear"></div>
									<div class="gdlr-core-column-30">
										<span class="wpcf7-form-control-wrap your-phone">
											<input type="text" name="your-phone" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" placeholder="Điện thoại*">
										</span>
									</div>
									<div class="gdlr-core-column-30">
										<span class="wpcf7-form-control-wrap your-email">
											<input type="email" name="your-email" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-email wpcf7-validates-as-required wpcf7-validates-as-email" aria-required="true" aria-invalid="false" placeholder="Email*">
										</span>
										</div>
									<div class="clear"></div>
									<div class="gdlr-core-column-60">
										<span class="wpcf7-form-control-wrap your-message">
											<select aria-required="true" name="your-country" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" style="padding: 20px 18px;background-color: #f5f5f5;margin-bottom: 20px;width: 100%;font-size: 15px;">
												<!-- <option value="" disabled selected>Chọn Quốc Gia*</option> -->
												@foreach ($country as $index)
													<option value="{{$index->name}}">{{$index->name}}</option>
												@endforeach
											</select>
											
										</span>
									</div>
									<div class="clear"></div>
									<div class="gdlr-core-column-30">
										<span class="wpcf7-form-control-wrap your-phone">
											<input type="text" name="your-business" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" placeholder="Công Ty">
										</span>
									</div>
									<div class="gdlr-core-column-30">
										<span class="wpcf7-form-control-wrap your-phone">
											<input type="text" name="your-website" value="" size="40" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" aria-required="true" aria-invalid="false" placeholder="Website">
										</span>
									</div>
									<div class="clear"></div>

									<div class="gdlr-core-column-30">
										<lable>Bạn có đang hợp tác với các nhà môi giới khác không?*</lable>
										<span class="wpcf7-form-control-wrap your-message">
											<select aria-required="true" name="your-agency" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" style="padding: 20px 18px;background-color: #f5f5f5;margin-bottom: 20px;width: 100%;font-size: 15px;">
												<option value="" disabled selected>Vui lòng chọn*</option>
												<option value="Có">Có</option>
												<option value="Không">Không</option>
												
											</select>
											
										</span>
									</div>
									<div class="gdlr-core-column-30">
										<lable>Số lượng khách hàng tiềm năng bạn có thể giới thiệu*</lable>
										<span class="wpcf7-form-control-wrap your-message">
										<select aria-required="true" name="your-customer" class="wpcf7-form-control wpcf7-text wpcf7-validates-as-required" style="padding: 20px 18px;background-color: #f5f5f5;margin-bottom: 20px;width: 100%;font-size: 15px;">
												<option value="" disabled selected>Vui lòng chọn*</option>
												<option value="1-10">1-10</option>
												<option value="11-20">11-20</option>
												<option value="21-50">21-50</option>
												<option value="50+">50+</option>
												
											</select>
											
										</span>
									</div>
									<div class="clear"></div>
									<div class="gdlr-core-column-60">
									Futures Rapid cần thông tin liên lạc bạn cung cấp cho chúng tôi để liên hệ với bạn về các sản phẩm và dịch vụ của chúng tôi. Bạn có thể hủy đăng ký các liên lạc này bất cứ lúc nào. Để biết thông tin về cách hủy đăng ký, cũng như các thực tiễn về quyền riêng tư và cam kết bảo vệ quyền riêng tư của bạn
									</div>

									<div class="gdlr-core-column-60 gdlr-core-center-align">
										<input type="submit" id="registerbutton" value="Trở thành đối tác ngay" class="form-control">
									</div>
									</div>
								<div style="color:green" class="response-output"></div>
							</form>
				</div>
			</div>
		</div>



        <div class="gdlr-core-pbf-wrapper-content gdlr-core-js ">
            <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
                {!!$about->content!!}
            </div>
        </div>
    </div>
</div>

@endsection
@section('scripts')
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
    $("#registeradd").submit(function(event) {
        $("#registerbutton").attr('value', 'Waiting');
        $('input[type="submit"]').attr('disabled','disabled');
        /* stop form from submitting normally */
        event.preventDefault();
        /* get some values from elements on the page: */
        var $form = $(this),
            _token = $form.find('input[name="_token"]').val(),
            name = $form.find('input[name="your-name"]').val(),
			surname = $form.find('input[name="your-surname"]').val(),
            email = $form.find('input[name="your-email"]').val(),
            phone = $form.find('input[name="your-phone"]').val(),
            country = $form.find('select[name="your-country"]').val(),
			business = $form.find('input[name="your-business"]').val(),
            website = $form.find('input[name="your-website"]').val(),
			agency = $form.find('select[name="your-agency"]').val(),
			customer = $form.find('select[name="your-customer"]').val(),
            
            url = $form.attr('action');

        /* Send the data using post */
        var posting = $.post(url, {
            _token: _token,
            name: name,
			surname: surname,
            email: email,
            phone: phone,
            country: country,
            business : business,
            website : website,
            agency : agency,
            customer : customer,

        });

        /* Put the results in a div */
        posting.done(function(data) {
            var content = data.message;
            $(".response-output").empty().append(content);
            $("#registerbutton").attr('value', 'Trở thành đối tác ngay');
            $('input[type="submit"]').removeAttr('disabled');
        });

        posting.fail(function(data) {
            var content = data.message;
            $('.response-output').empty().append(content);
            $("#registerbutton").attr('value', 'Trở thành đối tác ngay');
            $('input[type="submit"]').removeAttr('disabled');
        });
    })
</script>
@stop