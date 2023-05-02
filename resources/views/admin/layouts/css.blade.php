<link rel="dns-prefetch" href="//fonts.gstatic.com">
<link href="https://fonts.bunny.net/css?family=Nunito" rel="stylesheet">
<!-- Google Font: Source Sans Pro -->
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
<!-- Font Awesome Icons -->
<link rel="stylesheet" href="{{asset('admin/plugins/fontawesome-free/css/all.min.css')}}">
<link rel="stylesheet" href="{{asset('admin/plugins/toastr/toastr.min.css')}}">
@if(request()->is('admin/pages/*/edit')||request()->is('admin/pages/create')||request()->is('admin/ai-tools*'))
    <link rel="stylesheet" href="{{asset('admin/plugins/summernote/summernote-bs4.min.css')}}">

@endif
@if(request()->is('admin/dashboard'))
<!-- overlayScrollbars -->
<link rel="stylesheet" href="{{asset('admin/plugins/overlayScrollbars/css/OverlayScrollbars.min.css')}}">
@endif
<!-- Theme style -->

@if(request()->is('admin/news*')||request()->is('admin/ai-tools*'))
    <!-- Select2 -->
    <link rel="stylesheet" href="{{asset('admin/plugins/select2/css/select2.min.css')}}">
    <link rel="stylesheet" href="{{asset('admin/plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css')}}">

@endif
@if(request()->is('admin/pricing-plan')||request()->is('admin/features')||request()->is('admin/categories')||request()->is('admin/parent-categories')||request()->is('admin/news')||request()->is('admin/contact-us')||request()->is('admin/users')||\Route::currentRouteName()=='admin.ai_tools.index')
    <!-- DataTables -->
    <link rel="stylesheet" href="{{asset('admin/plugins/datatables-bs4/css/dataTables.bootstrap4.min.css')}}">
    <link rel="stylesheet" href="{{asset('admin/plugins/datatables-responsive/css/responsive.bootstrap4.min.css')}}">
    <link rel="stylesheet" href="{{asset('admin/plugins/datatables-buttons/css/buttons.bootstrap4.min.css')}}">
    <!-- Theme style -->
@endif
<link rel="stylesheet" href="{{asset('admin/dist/css/adminlte.min.css')}}">

