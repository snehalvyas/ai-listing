@extends('admin.layouts.master')

@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Parent Categories</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">Parent Categories</li>
                        <li class="breadcrumb-item active">{{(isset($parentCategory)?'Edit':'Create')}}</li>
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
                <div class="col-md-6">
                    <!-- general form elements -->
                    <div class="card card-primary">
                        <div class="card-header">
                            <h3 class="card-title">{{(isset($parentCategory)?'Edit':'Create')}}</h3>
                        </div>
                        <!-- /.card-header -->
                        <!-- form start -->

                        <form method="post" action="{{(isset($parentCategory)?route('admin.parent_categories.update',$parentCategory->id):route('admin.parent_categories.store'))}}" id="quickForm">
                            @csrf
                            @if(isset($parentCategory))
                            @method('PATCH')
                            @endif
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Parent Category <span class="text-danger">*</span></label>
                                    <input type="text" class="form-control" name="parent_category" id="parent_category" value="{{ (isset($parentCategory)?$parentCategory->parent_category:old('parent_category')) }}" placeholder="Parent category" @error('parent_category') is-invalid @enderror required>
                                    @error('parent_category')
                                    <span class="text text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Status</label>
                                    <div class="custom-control custom-switch custom-switch-off-danger custom-switch-on-success  ">
                                        <input type="checkbox" name="status" class="custom-control-input " {{isset($parentCategory)&&$parentCategory->status==1?'checked':''}}  id="customSwitch" value="1">
                                        <label class="custom-control-label" for="customSwitch"></label>
                                    </div>
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
