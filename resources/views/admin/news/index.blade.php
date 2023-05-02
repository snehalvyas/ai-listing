@extends('admin.layouts.master')

@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>News</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">News</li>
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
                            <a class="btn btn-info btn-sm float-right" href="{{route('admin.news.create')}}">
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
                                    <th>Plan</th>
                                    <th>Approved</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($news as $feature)
                                <tr>
                                    <td>{{ $loop->index+1 }}</td>
                                    <td>{{$feature->title}}</td>
                                    <td>
                                        <div class="custom-control custom-switch custom-switch-off-danger custom-switch-on-success">
                                            <input type="checkbox" class="custom-control-input status" {{$feature->status==1?'checked':''}} data-id="{{$feature->id}}" data-url="{{route('admin.news.change_status',$feature->id)}}" id="customSwitch{{$loop->index}}">
                                            <label class="custom-control-label" for="customSwitch{{$loop->index}}"></label>
                                        </div>
                                    </td>
                                    <td>
                                        <form method="post" action="{{route('admin.news.destroy',$feature->id)}}">
                                            @csrf
                                        <a class="btn btn-info btn-sm" href="{{route('admin.news.edit',$feature->id)}}">
                                            <i class="fas fa-pencil-alt">
                                            </i>
                                            Edit
                                        </a>

                                            @method('DELETE')
                                        <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Do you want to delete?')" href="{{route('admin.news.destroy',$feature->id)}}">
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
                            {!! $news->withQueryString()->links('pagination::bootstrap-5') !!}

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
