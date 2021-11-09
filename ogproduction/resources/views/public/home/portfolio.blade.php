<div id="portfolios" class="portfolio_mixed_filter_wrapper gallery portfolio-content section content clearfix three_cols wide" data-columns="3">
    @php
    $galleries = \App\Gallery::where('show_home',1)->where('gallery_type_id',1)->get();
    $galleries1 = \App\Gallery::where('show_home',1)->where('gallery_type_id',3)->get();
    $galleries2 = \App\Gallery::where('show_home',1)->where('gallery_type_id',2)->get();
    @endphp
    @foreach($galleries as $gallery)
    <div class="element classic3_cols ">
        <div class="one_third gallery3 filterable static1 portfolio_type">
            <a href="galleries-hinh-anh/chi-tiet/{{$gallery->id}}" data-options="width:1425, height:802">
                <img src="{{ asset($gallery->image_path) }}" alt="{{ $gallery->title }}" />
                <div id="portfolio_desc_6396" class="portfolio_title">
                    <div class="image_caption">
                        <h5>{{ $gallery->title }}</h5>
                    </div>
                </div>
            </a>
        </div>
    </div>
    @endforeach
    <div style="height: 45px ; width: 100%" class="element classic3_cols ">
        <center>
            <H2>Album Event</H2>
        </center>
    </div>
    @foreach($galleries1 as $gallery1)
    <div class="element classic3_cols ">
        <div class="one_third gallery3 filterable static1 portfolio_type">
            <a href="galleries-hinh-anh/chi-tiet/{{$gallery1->id}}" data-options="width:1425, height:802">
                <img src="{{ asset($gallery1->image_path) }}" alt="{{ $gallery1->title }}" />
                <div id="portfolio_desc_6396" class="portfolio_title">
                    <div class="image_caption">
                        <h5>{{ $gallery1->title }}</h5>
                    </div>
                </div>
            </a>
        </div>
    </div>
    @endforeach
    <div style="height: 45px ; width: 100%" class="element classic3_cols ">
        <center>
            <H2>Album Tổng Hợp</H2>
        </center>
    </div>
    @foreach($galleries2 as $gallery2)
    <div class="element classic3_cols ">
        <div class="one_third gallery3 filterable static1 portfolio_type">
            <a href="galleries-hinh-anh/chi-tiet/{{$gallery2->id}}" data-options="width:1425, height:802">
                <img src="{{ asset($gallery2->image_path) }}" alt="{{ $gallery2->title }}" />
                <div id="portfolio_desc_6396" class="portfolio_title">
                    <div class="image_caption">
                        <h5>{{ $gallery2->title }}</h5>
                    </div>
                </div>
            </a>
        </div>
    </div>
    @endforeach
</div>