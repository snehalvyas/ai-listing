@extends('admin.layouts.master')

@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Page</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">Page</li>
                        <li class="breadcrumb-item active">{{(isset($page)?'Edit':'Create')}}</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <!-- left column -->
                <div class="col-md-12">
                    <!-- general form elements -->
                    <div class="card card-primary">
                        <div class="card-header">
                            <h3 class="card-title">{{(isset($page)?'Edit':'Create')}}</h3>
                        </div>
                        <!-- /.card-header -->
                        <!-- form start -->
                        <form method="post" action="{{(isset($page)?route('admin.pages.update',$page->id):route('admin.pages.store'))}}" id="quickForm">
                            @csrf
                            @if(isset($page))
                            @method('PATCH')
                            @endif
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Page Name <span class="text-danger">*</span></label>
                                    <input type="text" class="form-control" name="page_name" id="page_name" value="{{ (isset($page)?$page->page_name:old('page_name')) }}" placeholder="Page name" @error('page_name') is-invalid @enderror required>
                                    @error('page_name')
                                    <span class="text text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                            <div class="form-group">
                                    <label for="exampleInputEmail1">Description <span class="text-danger">*</span></label>
                                <textarea class="form-control summernote" data-msg="Write something:)" name="description" id="description" placeholder="Page Content" @error('description') is-invalid @enderror required>
                                    @if(isset($page))
                                {!! html_entity_decode($page->description) !!}
                                @endif
                                </textarea>
                                    @error('description')
                                    <span class="text text-danger">{{ $message }}</span>
                                    @enderror
                                </div>

                            </div>
                            <!-- /.card-body -->

                            <div class="card-footer">
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </div>
                        </form>
                    </div>
                    <!-- /.card -->

                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->

        </div>
    </section>
    <!-- jquery-validation -->

    <!-- /.content -->
@endsection
