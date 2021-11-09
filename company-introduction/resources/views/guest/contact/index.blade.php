@extends('guest.layouts.app')
@section('title',empty($title) ? '' : $title)
@section('styles')
  <style>
    #map iframe{
      width: 100%;
    }
  </style>
@endsection
@section('content')
	<!-- ================ start banner area ================= -->
	<section class="blog-banner-area" id="contact">
		<div class=" h-100" style="background: url({{isset($banner->image) ? asset('upload/images').'/'.$banner->image :'' }}) right center no-repeat;">
			<div class="blog-banner">
				<div class="text-center">
					<h1>{{isset($banner->title) ? $banner->title :''}}</h1>
					<nav aria-label="breadcrumb" class="banner-breadcrumb">
            <ol class="breadcrumb">
              {{-- <li class="breadcrumb-item"><a href="#">Home</a></li> --}}
              <li class="breadcrumb-item active" aria-current="page">{!!isset($banner->description) ? $banner->description : ''!!}</li>
            </ol>
          </nav>
				</div>
			</div>
    </div>
	</section>
	<!-- ================ end banner area ================= -->

	<!-- ================ contact section start ================= -->
  <section class="section-margin--small">
    <div class="container">
      <div class="d-none d-sm-block mb-5 pb-4">
        <div id="map" style="height: 420px;">
          {!!isset($contact->map) ? $contact->map : ''!!}
        </div>
      </div>


      <div class="row">
        <div class="col-md-4 col-lg-3 mb-4 mb-md-0">
          <div class="media contact-info">
            <span class="contact-info__icon"><i class="ti-home"></i></span>
            <div class="media-body">
              <h3>{!!isset($contact->address) ? $contact->address : ''!!}</h3>
              {{-- <p>Santa monica bullevard</p> --}} <br>
            </div>
          </div>
          <div class="media contact-info">
            <span class="contact-info__icon"><i class="ti-headphone"></i></span>
            <div class="media-body">
              <h3><a >{!!isset($contact->phone) ? $contact->phone : ''!!}</a></h3>
              {{-- <p>Mon to Fri 9am to 6pm</p> --}} <br>
            </div>
          </div>
          <div class="media contact-info">
            <span class="contact-info__icon"><i class="ti-email"></i></span>
            <div class="media-body">
              <h3>{!!isset($contact->email) ? $contact->email : ''!!}</h3>
              {{-- <p>Send us your query anytime!</p> --}}
            </div>
          </div>
        </div>
        {{-- <div class="col-md-8 col-lg-9">
          <form action="#/" class="form-contact contact_form" action="contact_process.php" method="post" id="contactForm" novalidate="novalidate">
            <div class="row">
              <div class="col-lg-5">
                <div class="form-group">
                  <input class="form-control" name="name" id="name" type="text" placeholder="Enter your name">
                </div>
                <div class="form-group">
                  <input class="form-control" name="email" id="email" type="email" placeholder="Enter email address">
                </div>
                <div class="form-group">
                  <input class="form-control" name="subject" id="subject" type="text" placeholder="Enter Subject">
                </div>
              </div>
              <div class="col-lg-7">
                <div class="form-group">
                    <textarea class="form-control different-control w-100" name="message" id="message" cols="30" rows="5" placeholder="Enter Message"></textarea>
                </div>
              </div>
            </div>
            <div class="form-group text-center text-md-right mt-3">
              <button type="submit" class="button button--active button-contactForm">Send Message</button>
            </div>
          </form>
        </div> --}}
      </div>
    </div>
  </section>
	<!-- ================ contact section end ================= -->
@endsection

  