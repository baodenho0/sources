<div class="row" >
@foreach ($product as $element)                
              <div class="col-md-6 col-lg-4">
                <span class="category_id" data={{$element->product_category_id}}></span>
                <div class="card text-center card-product">
                  <div class="card-product__img">
                    <img class="card-img" src="{{ asset('upload/images').'/'.$element->image }}" alt="{{$element->title}}">
                    <ul class="card-product__imgOverlay">
                      <li><button><a href="{{ route('guest.detail',$element->slug) }}"><i class="ti-search"></i></a></button></li>
                      {{-- <li><button><i class="ti-shopping-cart"></i></button></li> --}}
                      {{-- <li><button><i class="ti-heart"></i></button></li> --}}
                    </ul>
                  </div>
                  <div class="card-body">
                    {{-- <p>Accessories</p> --}}
                    <h4 class="card-product__title"><a href="#">{{$element->name}}</a></h4>
                    <p class="card-product__price">${{number_format($element->price)}}</p>
                  </div>
                </div>
              </div>
@endforeach 
</div>
<div class="text-center">
  {{$product->links()}}
</div>

