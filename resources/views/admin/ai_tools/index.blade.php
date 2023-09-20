@extends('admin.layouts.master')

@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Ai-Tools</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">Ai-Tools</li>
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
                            <a class="btn btn-info btn-sm float-right" href="{{route('admin.ai_tools.create')}}">
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
                                    <th>Tool</th>
                                    <th>Created at</th>
                                    <th>Approved</th>
                                    <th>Action</th>
                                </tr>
                                </thead>
                                <tbody>
                                @foreach($aiTools as $tool)
                                <tr>
                                    <td>{{ $loop->index+1 }}</td>
                                    <td>{{$tool->tool_name}}</td>
                                    <td>{{$tool->created_at}}</td>
                                    <td>
                                        <div class="custom-control custom-switch custom-switch-off-danger custom-switch-on-success">
                                            <input type="checkbox" class="custom-control-input status" {{$tool->status==1?'checked':''}} data-id="{{$tool->id}}" data-url="{{route('admin.ai_tools.change_status',$tool->id)}}" id="customSwitch{{$loop->index}}">
                                            <label class="custom-control-label" for="customSwitch{{$loop->index}}"></label>
                                        </div>
                                    </td>
                                    <td>
                                        <form method="post" action="{{route('admin.ai_tools.destroy',$tool->id)}}">
                                            @csrf
                                        <a class="btn btn-warning btn-sm" href="{{route('admin.ai_tools.show',$tool->id)}}">
                                            <i class="fas fa-eye">
                                            </i>
                                            View
                                        </a>
                                            <a class="btn btn-info btn-sm" href="{{route('admin.ai_tools.edit',$tool->id)}}">
                                                <i class="fas fa-pencil-alt">
                                                </i>
                                                Edit
                                            </a>

                                            @method('DELETE')
                                        <button type="submit" class="btn btn-danger btn-sm" onclick="return confirm('Do you want to delete?')" href="{{route('admin.ai_tools.destroy',$tool->id)}}">
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
                            {!! $aiTools->withQueryString()->links('pagination::bootstrap-5') !!}
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
