<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>@yield('title')</title>

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Quicksand:300,400,500,700" rel="stylesheet">
	<link href="https://maxcdn.icons8.com/fonts/line-awesome/1.1/css/line-awesome.min.css" rel="stylesheet">

	<link rel="stylesheet" type="text/css" href="{{ asset('modern/css/vendors.css') }}">
	<link rel="stylesheet" type="text/css" href="{{ asset('modern/css/app.css') }}">
	<link rel="stylesheet" type="text/css" href="{{ asset('modern/css/app-main.css') }}">
	<link rel="stylesheet" type="text/css" href="{{ asset('modern/css/core/menu/menu-types/vertical-menu-modern.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('modern/css/core/colors/palette-gradient.min.css') }}">
    <link rel="stylesheet" href="{{ asset('plugins/jqueryScrollbar/jquery.scrollbar.css') }}"/>
    <link rel="stylesheet" href="{{ asset('plugins/materialdesign/css/materialdesignicons.min.css') }}">
    <link rel="stylesheet" href="{{ asset('plugins/multiselect/dist/css/bootstrap-multiselect.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('plugins/select2/dist/css/select2.min.css') }}">

    <link rel="stylesheet" href="{{ asset('materialDesign\css\mdb.css') }}">

    <link rel="stylesheet" type="text/css" href="{{asset('modern/css/plugins/forms/validation/form-validation.css')}}">
    <link rel="stylesheet" type="text/css" href="{{asset('modern/vendors/css/extensions/sweetalert.css')}}">

  @stack('link')
  @stack('style')

</head>

<body class="vertical-layout vertical-menu-modern 2-columns menu-expanded fixed-navbar" data-open="click" data-menu="vertical-menu-modern" data-col="2-columns">
    @include('layouts.nav')
    @include('layouts.menu')
    <div class="app-content content">
        @yield('content')
    </div>
    <script type="text/javascript" src="{{ asset('modern/vendors/js/vendors.min.js') }}"></script>
	<script type="text/javascript" src="{{ asset('modern/js/core/app-menu.js') }}"></script>
    <script type="text/javascript" src="{{ asset('modern/js/core/app.js') }}"></script>
    <script type="text/javascript" src="{{ asset('modern/js/scripts/customizer.js') }}"></script>
    <script type="text/javascript" src="{{ asset('materialDesign/js/mdb.js') }}"></script>
    <script type="text/javascript" src="{{ asset('modern/vendors/js/editors/ckeditor/ckeditor.js') }}"></script>
    <script type="text/javascript" src="{{ asset('plugins/jqueryScrollbar/jquery.scrollbar.js') }}"></script>
    <script type="text/javascript" src="{{ asset('plugins/maskInput/jquery.mask.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('plugins/moment/moment-with-locales.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('plugins/datetimepicker/bootstrap-datetimepicker.min.js') }}"></script>
    <script type="text/javascript" src="{{ asset('plugins/cnpjcpf/cnpjcpf.js') }}"></script>

    <!-- FORMS -->
    <script src="{{asset('modern/vendors/js/forms/spinner/jquery.bootstrap-touchspin.js')}}" type="text/javascript"></script>
    <script src="{{asset('modern/vendors/js/forms/validation/jqBootstrapValidation.js')}}" type="text/javascript"></script>
    <script src="{{asset('modern/vendors/js/forms/icheck/icheck.min.js')}}" type="text/javascript"></script>
    <script src="{{asset('modern/js/scripts/forms/validation/form-validation.js')}}" type="text/javascript"></script>
    <script src="{{asset('modern/vendors/js/forms/toggle/bootstrap-switch.js')}}" type="text/javascript"></script>
    <!-- END FORMS -->

    <script src="{{ asset('modern/vendors/js/extensions/sweetalert.min.js') }}" type="text/javascript"></script>

    <script src="{{ asset('plugins/select2/dist/js/select2.min.js') }}" type="text/javascript"></script>
    <script>

  </script>
  @stack('scripts')

</body>
</html>
