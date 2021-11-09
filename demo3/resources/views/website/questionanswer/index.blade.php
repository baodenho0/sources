@extends("website.layouts.master")
@section("styles")

@endsection
@section("content")
<div class="ro-section ro-padding-top">
    <div class="container">
        <div class="col-lg-12 text-center">
            <h3 class="ro-hr-heading">QUESTION AND ANSWER</h3>
        </div>
        @foreach ($questionanswer as $QandA)
            <div class="col-lg-12">
                <div class="ro-blog-article ro-preview"><a class="ro-title">{{$QandA->question}}</a>
                    <div class="ro-content ro-ellipsis">{{$QandA->answer}}
                    </div>
                </div>
            </div>
        @endforeach
    </div>
</div>
@endsection
