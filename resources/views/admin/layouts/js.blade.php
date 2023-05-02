<script src="{{asset('admin/plugins/jquery/jquery.min.js')}}"></script>
<!-- Bootstrap -->
<script src="{{asset('admin/plugins/bootstrap/js/bootstrap.bundle.min.js')}}"></script>
@if(request()->is('admin/dashboard'))
<!-- overlayScrollbars -->
<script src="{{asset('admin/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js')}}"></script>
<script src="{{asset('admin/dist/js/pages/dashboard2.js')}}"></script>
@endif
<!-- AdminLTE App -->
<script src="{{asset('admin/dist/js/adminlte.js')}}"></script>

<!-- PAGE PLUGINS -->
<!-- jQuery Mapael -->
<script src="{{asset('admin/plugins/jquery-mousewheel/jquery.mousewheel.js')}}"></script>
<script src="{{asset('admin/plugins/raphael/raphael.min.js')}}"></script>
<script src="{{asset('admin/plugins/jquery-mapael/jquery.mapael.min.js')}}"></script>
<script src="{{asset('admin/plugins/jquery-mapael/maps/usa_states.min.js')}}"></script>
<!-- ChartJS -->
{{--<script src="{{asset('plugins/chart.js/Chart.min.js')}}"></script>--}}
<!-- DataTables  & Plugins -->
@if(request()->is('admin/pricing-plan')||request()->is('admin/features')||request()->is('admin/categories')||request()->is('admin/parent-categories')||request()->is('admin/news')||request()->is('admin/contact-us')||request()->is('admin/users')||\Route::currentRouteName()=='admin.ai_tools.index')
<script src="{{asset('admin/plugins/datatables/jquery.dataTables.min.js')}}"></script>
<script src="{{asset('admin/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js')}}"></script>
<script src="{{asset('admin/plugins/datatables-responsive/js/dataTables.responsive.min.js')}}"></script>
<script src="{{asset('admin/plugins/datatables-responsive/js/responsive.bootstrap4.min.js')}}"></script>
<script src="{{asset('admin/plugins/datatables-buttons/js/dataTables.buttons.min.js')}}"></script>
<script src="{{asset('admin/plugins/datatables-buttons/js/buttons.bootstrap4.min.js')}}"></script>
<script src="{{asset('admin/plugins/jszip/jszip.min.js')}}"></script>
<script src="{{asset('admin/plugins/pdfmake/pdfmake.min.js')}}"></script>
<script src="{{asset('admin/plugins/pdfmake/vfs_fonts.js')}}"></script>
<script src="{{asset('admin/plugins/datatables-buttons/js/buttons.html5.min.js')}}"></script>
<script src="{{asset('admin/plugins/datatables-buttons/js/buttons.print.min.js')}}"></script>
<script src="{{asset('admin/plugins/datatables-buttons/js/buttons.colVis.min.js')}}"></script>
<script>
    $(function () {
        $("#example1").DataTable({
            "responsive": true, "lengthChange": false, "autoWidth": false,
            @if(request()->is('admin/news')||\Route::currentRouteName()=='admin.ai_tools.index')
            "bPaginate": false,
            @endif
            "buttons": ["copy", "csv", "excel", "pdf", "print", "colvis"]
        }).buttons().container().appendTo('#example1_wrapper .col-md-6:eq(0)');
        // $('#example2').DataTable({
        //     "paging": true,
        //     "lengthChange": false,
        //     "searching": false,
        //     "ordering": true,
        //     "info": true,
        //     "autoWidth": false,
        //     "responsive": true,
        // });
    });
</script>


@endif
<script src="{{asset('admin/plugins/toastr/toastr.min.js')}}"></script>

<!-- AdminLTE for demo purposes -->
<script src="{{asset('admin/dist/js/demo.js')}}"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->

@if(request()->is('admin/pages/*/edit')||request()->is('admin/pages/create')||request()->is('admin/ai-tools*'))
<script src="{{asset('admin/plugins/summernote/summernote-bs4.min.js')}}"></script>
<script>
    $(function () {
        // Summernote
        $('.summernote').summernote()

    })
</script>

@endif
@if(request()->is('admin/profile')||request()->is('admin/pricing-plan*')||request()->is('admin/features*')||request()->is('admin/categories*')||request()->is('admin/parent-categories*')||request()->is('admin/news*')||request()->is('admin/pages*')||request()->is('admin/ai-tools*'))

<script src="{{asset('admin/plugins/jquery-validation/jquery.validate.min.js')}}"></script>
<script src="{{asset('admin/plugins/jquery-validation/additional-methods.min.js')}}"></script>
@if(request()->is('admin/news*')||request()->is('admin/ai-tools*')||request()->is('admin/profile'))
    <script src="{{asset('admin/plugins/select2/js/select2.full.min.js')}}"></script>
    <script src="{{asset('admin/plugins/bs-custom-file-input/bs-custom-file-input.min.js')}}"></script>
    <script>
        $(function () {
            $('.select2').select2({
                maximumSelectionLength: '{{(\Route::currentRouteName()=='admin.ai_tools.create'||\Route::currentRouteName()=='admin.ai_tools.edit')?3:2}}',
                formatSelectionTooBig: function (limit) {
                    return 'You can select only '+limit+' tags';
                }
            })
            bsCustomFileInput.init();
        });
    </script>

@endif

<script>
    $(function () {
        $.validator.setDefaults({
            submitHandler: function () {
                return true;
            }
        });
        $('#quickForm').validate({
            // errorClass:'text-danger',
            errorElement: 'span',
            errorPlacement: function (error, element) {
                error.addClass('invalid-feedback');
                element.closest('.form-group').append(error);
            },
            ignore: ':hidden:not(.summernote),.note-editable.card-block',
            highlight: function (element, errorClass, validClass) {
                $(element).addClass('is-invalid');
            },
            unhighlight: function (element, errorClass, validClass) {
                $(element).removeClass('is-invalid');
            }
        });
       $('#changePassword').validate({
            // errorClass:'text-danger',
            errorElement: 'span',
            errorPlacement: function (error, element) {
                error.addClass('invalid-feedback');
                element.closest('.form-group').append(error);
            },
            // ignore: ':hidden:not(.summernote),.note-editable.card-block',
            highlight: function (element, errorClass, validClass) {
                $(element).addClass('is-invalid');
            },
            unhighlight: function (element, errorClass, validClass) {
                $(element).removeClass('is-invalid');
            },
           rules: {
               new_password: {
                   minlength: 8,
               },
               confirm_password: {
                   minlength: 8,
                   equalTo: "#new_password"
               }
           }

       });
        $(document).on('change','.status',function (e){
            e.preventDefault();
            var url=$(this).data('url');

            {{--if (url=='pricing_plan'){--}}
            {{--    url = '{{route('admin.pricing_plan.change_status')}}';--}}
            {{--}--}}
            $.ajax({
                url:url,
                dataType:'JSON',
                success:function (r){
                if (r.status==1){
                    toastr.success(r.msg);
                }else{
                    toastr.success(r.msg);
                }
                }
            })
        });
    });
</script>
    @endif
<script>
        $(function() {
    //     var Toast = Swal.mixin({
    //     toast: true,
    //     position: 'top-end',
    //     showConfirmButton: false,
    //     timer: 3000
    // });

     @if(Session::has('success'))
            toastr.success('{{session('success')}}');
        {{--Toast.fire({--}}
        {{--icon: 'success',--}}
        {{--title: '{{session('success')}}'--}}
        {{--});--}}

        {{--    $(document).Toasts('create', {--}}
        {{--        title: 'Toast Title',--}}
        {{--        position: 'topCenter',--}}
        {{--        body: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr.'--}}
        {{--    })--}}
     @endif

        // Toast.fire({
        // icon: 'info',
        // title: 'Lorem ipsum dolor sit amet, consetetur sadipscing elitr.'
        // });

      @if(session('error'))
       {{-- Toast.fire({--}}
       {{-- icon: 'error',--}}
       {{-- title: '{{session('success')}}'--}}
       {{--});--}}
            toastr.error('{{session('error')}}')
      @endif
    });

</script>
