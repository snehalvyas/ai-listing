@extends('admin.layouts.master')

@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Pages</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">Pages</li>
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
                            <a class="btn btn-info btn-sm float-right" href="{{route('admin.pages.create')}}">
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
                                    <th>Page</th>
                                    <th>Status</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($pages as $page)
                                <tr>
                                    <td>{{ $loop->index+1 }}</td>
                                    <td>{{$page->page_name}}</td>
                                    <td>
                                        <div class="custom-control custom-switch custom-switch-off-danger custom-switch-on-success">
                                            <input type="checkbox" class="custom-control-input status" {{$page->status==1?'checked':''}} data-id="{{$page->id}}" data-url="{{route('admin.pages.change_status',$page->id)}}" id="customSwitch{{$loop->index}}">
                                            <label class="custom-control-label" for="customSwitch{{$loop->index}}"></label>
                                        </div>
                                    </td>
                                    <td>
                                        <form method="post" action="{{route('admin.pages.destroy',$page->id)}}">
                                            @csrf
                                        <a class="btn btn-info btn-sm" href="{{route('admin.pages.edit',$page->id)}}">
                                            <i class="fas fa-pencil-alt">
                                            </i>
                                            Edit
                                        </a>

                                            @method('DELETE')
                                        <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Do you want to delete?')" href="{{route('admin.pages.destroy',$page->id)}}">
                                            <i class="fas fa-trash">
                                            </i>
                                            Delete
                                        </button>
                                        </form>
                                    </td>

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
