<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Sistem Gerecial</title>

         <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Raleway:100,200,400,500,700|Roboto:100,200,400,900" rel="stylesheet">

        <!-- Bootstrap CSS File -->
        <link href="{{ asset('modern/css/bootstrap.min.css') }}" rel="stylesheet">

        <!-- Libraries CSS Files -->
        <link href="{{ asset('css/font-awesome.min.css') }}" rel="stylesheet">

        <!-- Main Stylesheet File -->
        <link href="{{ asset('css/style.css') }}" rel="stylesheet">
    </head>
    <body style="position: relative; overflow: hidden;">
        <section class="hero">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        {{-- <a class="hero-brand" href="https://deputadocabomaciel.com/" title="Home"><img alt="Bell Logo" src="{{ url('img/COLOR.png' )}}"></a> --}}
                    </div>
                </div>
                <div class="col-md-12">
                    <h1 style="font-weight: 400;">Sistem Gerencial</h1>
                    <p class="tagline">
                        Sistema gerencial de recursos logisticos.
                    </p>
                    <a href="{{ url('/login') }}" class="btn btn-outline-success btn-login btn-lg">Login</a>
                </div>
            </div>
        </section>
    </body>
</html>
