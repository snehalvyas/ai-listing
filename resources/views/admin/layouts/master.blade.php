<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>AdminLTE 3 | Dashboard 2</title>
@include('admin.layouts.css')
</head>
<body class="hold-transition {{(request()->is('admin/dashboard')?'light':'light')}}-mode sidebar-mini layout-fixed layout-navbar-fixed layout-footer-fixed">
<div class="wrapper">

    <!-- Preloader -->
    <div class="preloader flex-column justify-content-center align-items-center">
        <img class="animation__wobble" src="{{asset('admin/dist/img/AdminLTELogo.png')}}" alt="AdminLTELogo" height="60" width="60">
    </div>

@include('admin.layouts.header')

<!-- Main Sidebar Container -->
    @include('admin.layouts.sidebar')

    <div class="content-wrapper">
@yield('content')
    </div>
    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-{{(request()->is('admin/dashboard')?'dark':'dark')}}">
        <!-- Control sidebar content goes here -->
    </aside>
    <!-- /.control-sidebar -->

    @include('admin.layouts.footer')
</div>
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->
<!-- jQuery -->
@include('admin.layouts.js')
</body>
</html>
