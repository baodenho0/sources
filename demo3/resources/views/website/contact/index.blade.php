@extends("website.layouts.master")
@section("styles")
<style type="text/css">
.iframe-100 iframe {
    width: 100%
}

</style>
@endsection
@section("content")
<div class="ro-section ro-padding-top">
    <div class="container">
        <div class="row">
            <div class="col-md-7 col-xs-12 ro-mt-10 iframe-100">{!!$contact->map!!}</div>
            <div class="col-md-5 col-xs-12 ro-section-mb">
                <div class="row ro-contact-info-wrapper">
                    <div class="col-md-6">
                        <div class="ro-contact-info icon-185040-map-pin-streamline">
                            {{$contact->address}}
                        </div>
                        <div class="ro-contact-info icon-185078-email-mail-streamline">Email:<a class="ro-color-main">{{$contact->email}}</a></div>
                        <div class="ro-contact-info ">
                            @if($contact->facebook_link)
                                <a style="padding-left:20px" target="_blank" href="{{$contact->facebook_link}}"> <img src="{{ asset('upload/icons/facebook_icon.png') }}" > </a>
                            @endif
                            @if($contact->yelp_link)
                                <a style="padding-left:20px" target="_blank" href="{{$contact->yelp_link}}"> <img src="{{ asset('upload/icons/yelp_icon.png') }}" > </a>
                            @endif
                            @if($contact->google_link)
                                <a style="padding-left:20px" target="_blank" href="{{$contact->google_link}}"><img src="{{ asset('upload/icons/gp_icon.png') }}" > </a>
                            @endif
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="ro-contact-info icon-phone">Phone: {{$contact->phone}}</div>
                    </div>
                </div>
               
            </div>
        </div>
    </div>
</div>
@endsection
