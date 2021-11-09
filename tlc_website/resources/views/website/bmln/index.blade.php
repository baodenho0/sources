@extends("website.layouts.master")
@section("title",'BMLN')
@section("content")

<div class="financity-page-wrapper" id="financity-page-wrapper">
    <div class="gdlr-core-page-builder-body">
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
			<div class="gdlr-core-pbf-background-wrap" style="background-color: #1d1d1d ;"></div>
			<div class="gdlr-core-pbf-wrapper-content gdlr-core-js ">
				<div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-container">
					<div class="gdlr-core-pbf-column gdlr-core-column-30 gdlr-core-column-first">
						<div class="gdlr-core-pbf-column-content-margin gdlr-core-js " style="padding: 110px 40px 55px 0px; height: 607px;" data-sync-height="half-height">
							<div class="gdlr-core-pbf-column-content clearfix gdlr-core-js  gdlr-core-sync-height-content">
								<div class="gdlr-core-pbf-element">
									<div class="gdlr-core-title-item gdlr-core-item-pdb clearfix  gdlr-core-left-align gdlr-core-title-item-caption-top gdlr-core-item-pdlr" style="padding-bottom: 40px ;">
										<div class="gdlr-core-title-item-title-wrap ">
											<h3 class="gdlr-core-title-item-title gdlr-core-skin-title " style="font-size: 30px ;font-weight: 600 ;letter-spacing: 0px ;text-transform: none ;color: #ffffff ;">
												<span class="gdlr-core-title-item-title-divider gdlr-core-skin-divider"></span>
											</h3>
										</div>
									</div>
								</div>
								<div class="gdlr-core-pbf-element">
									<div class="gdlr-core-text-box-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-left-align">
										<div class="gdlr-core-text-box-item-content" style="font-size: 18px ;text-transform: none ;color: #c1c1c1 ;">
											  
										{!!$about->leftcontent!!}

										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="gdlr-core-pbf-column gdlr-core-column-30">
						<div class="gdlr-core-pbf-column-content-margin gdlr-core-js  gdlr-core-column-extend-right" data-sync-height="half-height" style="height: 607px;">
							<div class="gdlr-core-pbf-background-wrap">
								<div class="gdlr-core-pbf-background gdlr-core-parallax gdlr-core-js" style="background-image: url({{$about->rightimage}}); background-size: cover; background-position: right center; height: 567.4px; transform: translate(0px, -12.9906px);" data-parallax-speed="0.2"></div>
							</div>
							<div class="gdlr-core-pbf-column-content clearfix gdlr-core-js  gdlr-core-sync-height-content"></div>
						</div>
					</div>
				</div>
			</div>
		</div>





        <div class="gdlr-core-pbf-wrapper  gdlr-core-hide-in-tablet-mobile" style="padding: 0px 0px 0px 0px;border-width: 0px 0px 1px 0px;border-color: #cecece ;border-style: solid ;" data-skin="Grey Text">
	    <div class="gdlr-core-pbf-background-wrap"></div>
	    <div class="gdlr-core-pbf-wrapper-content gdlr-core-js ">
		    <div class="gdlr-core-pbf-wrapper-container clearfix gdlr-core-pbf-wrapper-full-no-space">
			    <div class="gdlr-core-pbf-column gdlr-core-column-30 gdlr-core-column-first gdlr-core-hide-in-tablet-mobile" id="gdlr-core-column-1">
				    <div class="gdlr-core-pbf-column-content-margin gdlr-core-js  gdlr-core-column-extend-left" style="padding: 110px 0px; height: 563px;" data-sync-height="chengxin">
					    <div class="gdlr-core-pbf-background-wrap">
						    <div class="gdlr-core-pbf-background gdlr-core-parallax gdlr-core-js" style="background-image: url({{$about->leftimage}}); background-size: cover; background-position: center center; height: 717px; transform: translate(0px, -164.953px);" data-parallax-speed="1"></div>
					    </div>
					<div class="gdlr-core-pbf-column-content clearfix gdlr-core-js  gdlr-core-sync-height-content">
						<div class="gdlr-core-pbf-element">
							<div class="gdlr-core-text-box-item gdlr-core-item-pdlr gdlr-core-item-pdb gdlr-core-center-align" style="padding-bottom: 0px ;">
								<div class="gdlr-core-text-box-item-content" style="font-size: 18px ;text-transform: none ;">
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="gdlr-core-pbf-column gdlr-core-column-30">
						<div class="gdlr-core-pbf-column-content-margin gdlr-core-js " style="padding: 50px; height: 563px;" data-sync-height="chengxin">
								
							{!!$about->rightcontent!!}
							
						</div>
					</div>
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