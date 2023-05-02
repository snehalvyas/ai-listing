@extends('admin.layouts.master')

@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Contact Us</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">Contact Us</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title">List</h3>
                            <a class="btn btn-info btn-sm float-right" href="{{route('admin.contactus.create')}}">
                                <i class="fas fa-plus">
                                </i>
                                New
                            </a>
                        </div>
                        <!-- /.card-header -->
                        <div class="card-body">
                            <table id="example1" class="table table-bordered table-striped">
                                <thead>
                                <tr>
                                    <th>#</th>
                                    <th>Email</th>
                                    <th>Description</th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($contactus as $contact)
                                    <tr>
                                        <td>{{ $loop->index+1 }}</td>
                                        <td>{{ $contact->email}}</td>
                                        <td>{{$contact->description}}</td>
{{--                                        <td>--}}
{{--                                            <div class="custom-control custom-switch custom-switch-off-danger custom-switch-on-success">--}}
{{--                                                <input type="checkbox" class="custom-control-input status" {{$contact->status==1?'checked':''}} data-id="{{$contact->id}}" data-url="{{route('admin.contactus.change_status',$contact->id)}}" id="customSwitch{{$loop->index}}">--}}
{{--                                                <label class="custom-control-label" for="customSwitch{{$loop->index}}"></label>--}}
{{--                                            </div>--}}
{{--                                        </td>--}}


                                    </tr>
                                @endforeach
                                </tbody>
                            </table>
                        </div>
                        <!-- /.card-body -->
                    </div>
                    <!-- /.card -->
                </div>
                <!-- /.col -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
@endsection
