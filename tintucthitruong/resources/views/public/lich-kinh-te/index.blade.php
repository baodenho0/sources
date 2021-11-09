@extends("public.layouts.master")
@php
$logo = \App\Logo::first();
@endphp
@section("title","Lịch Kinh Tế")
@section("meta")
<!-- For Facebook -->
<meta property="og:title" content="Lịch Kinh Tế - Trading Intelligence" />
<meta property="og:type" content="article" />
<meta property="og:image" content="{{asset($logo->image)}}" />
<meta property="og:url" content="{{Request::url()}}" />
<meta property="og:description" content="Lịch Kinh Tế" />
@endsection
@section("content")
<div class="theme_page relative">
    <div class="clearfix">
        <div class="vc_row wpb_row vc_row-fluid full_width">
            <div class="wpb_column vc_column_container vc_col-sm-12">
            </div>
        </div>
        <div class="vc_row wpb_row vc_row-fluid page_margin_top padding-top-3em">
            <div class="wpb_column vc_column_container ">
                <div class="wpb_wrapper">
                    <h4 class="box_header">Lịch kinh tế</h4>
                    <div class="vc_row wpb_row vc_row-fluid lich-kinh-te">
                        {{-- <div class="vc_col-sm-6 wpb_column vc_column_container"> --}}
                            <iframe src="https://sslecal2.forexprostools.com?columns=exc_flags,exc_currency,exc_importance,exc_actual,exc_forecast,exc_previous&features=datepicker,timezone&countries=33,14,4,34,38,32,6,11,51,5,39,72,60,110,43,35,71,22,36,26,12,9,37,25,178,10,17&calType=week&timeZone=110&lang=52" width="650" height="900vh" frameborder="0" allowtransparency="true" marginwidth="0" marginheight="0"></iframe>
                            {{-- <div class="poweredBy" style="font-family: Arial, Helvetica, sans-serif;"><span style="font-size: 11px;color: #333333;text-decoration: none;">Lịch Kinh Tế theo Thời Gian Thực được cung cấp bởi <a href="https://vn.Investing.com/" rel="nofollow" target="_blank" style="font-size: 11px;color: #06529D; font-weight: bold;" class="underline_link">Investing.com Việt Nam</a></span></div> --}}
                            {{--
                        </div> --}}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
@section("scripts")
<script type="text/javascript">
</script>
@endsection