@extends('Frontend.layouts.app2')
@section('title', 'Lista itens')
@section('content')
    <style>
        .image_outer_container{
            margin-top: auto;
            margin-bottom: auto;
            border-radius: 50%;
            position: relative;
        }

        .image_inner_container{
            border-radius: 50%;
            padding: 5px;
        }
        .image_inner_container img{
            height: 200px;
            width: 200px;
            border-radius: 50%;
            border: 5px solid white;
        }

        .image_outer_container .green_icon{
             background-color: #4cd137;
             position: absolute;
             right: 30px;
             bottom: 10px;
             height: 30px;
             width: 30px;
             border:5px solid white;
             border-radius: 50%;
        }
    </style>
<body>
   	<div class="container">
        @foreach($itens as $item)
            <div class="col-md-3">
                <a href="{{ route($ctrl['route'].'.entity-page', $item->name) }}">
            		<div class="d-flex justify-content-center h-100">
            			<div class="image_outer_container">
            				<div class="image_inner_container" align="center">
            					<img src="https://i0.wp.com/tricksmaze.com/wp-content/uploads/2017/04/Stylish-Girls-Profile-Pictures-36.jpg?resize=300%2C300&ssl=1">
            				</div>
                            <h5 align="center">{{$item->name}}</h5>
            			</div>
            		</div>
                </a>
            </div>
        @endforeach
	</div>
</body>
@endsection
