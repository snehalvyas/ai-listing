@extends('admin.layouts.master')

@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Categories</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">Categories</li>
                        <li class="breadcrumb-item active">{{(isset($categories)?'Edit':'Create')}}</li>
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
                            <h3 class="card-title">{{(isset($categories)?'Edit':'Create')}}</h3>
                        </div>
                        <!-- /.card-header -->
                        <!-- form start -->

                        <form method="post" action="{{(isset($categories)?route('admin.categories.update',$categories->id):route('admin.categories.store'))}}" id="quickForm">
                            @csrf
                            @if(isset($categories))
                            @method('PATCH')
                            @endif
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Category <span class="text-danger">*</span></label>
                                    <input type="text" class="form-control" name="category" id="category" value="{{ (isset($categories)?$categories->category:old('category')) }}" placeholder="category" @error('category') is-invalid @enderror required>
                                    @error('category')
                                    <span class="text text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                                <div class="form-group">
                                    <label>Parent Category <span class="text-danger">*</span></label>

                                    <select class="form-control select2" name="parent_id" data-placeholder="Select a Parent" style="width: 100%;" required>
                                         <option value="">Select</option>
                                        @foreach($parent as $cat)
                                            <option {{(isset($categories)&&$categories->parent_id==$cat->id?"selected":"")}} value="{{$cat->id}}">{{$cat->parent_category}}</option>
                                        @endforeach
                                    </select>
                                    @error('parent_id')
                                    <span class="text text-danger">{{ 'Parent Category is required' }}</span>
                                    @enderror
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Status</label>
                                    <div class="custom-control custom-switch custom-switch-off-danger custom-switch-on-success  ">
                                        <input type="checkbox" name="status" class="custom-control-input " {{isset($categories)&&$categories->status==1?'checked':''}}  id="customSwitch" value="1">
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
