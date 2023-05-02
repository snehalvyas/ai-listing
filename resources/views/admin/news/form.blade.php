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
                        <li class="breadcrumb-item active">{{(isset($news)?'Edit':'Create')}}</li>
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
                            <h3 class="card-title">{{(isset($news)?'Edit':'Create')}}</h3>
                        </div>
                        <!-- /.card-header -->
                        <!-- form start -->
                        <form method="post" action="{{(isset($news)?route('admin.news.update',$news->id):route('admin.news.store'))}}" id="quickForm" enctype="multipart/form-data">
                            @csrf
                            @if(isset($news))
                            @method('PATCH')
                            @endif
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Title <span class="text-danger">*</span></label>
                                    <input type="text" class="form-control" name="title" id="title" value="{{ (isset($news)?$news->title:old('title')) }}" placeholder="Please describe the content in 1-2 sentences." @error('title') is-invalid @enderror required>
                                    @error('title')
                                    <span class="text text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Link to the content <span class="text-danger">*</span></label>
                                    <input type="url" class="form-control" name="content_link" id="content_link" value="{{ (isset($news)?$news->content_link:old('content_link')) }}" placeholder="Content Link" @error('content_link') is-invalid @enderror required>
                                    @error('content_link')
                                    <span class="text text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Description <span class="text-danger">*</span></label>
                                    <textarea class="form-control" name="description" id="description" required placeholder="Description"  @error('description') is-invalid @enderror >{{ (isset($news)?$news->description:old('description')) }}</textarea>
                                    @error('description')
                                    <span class="text text-danger">{{ $message }}</span>
                                    @enderror
                                </div>


                                <div class="form-group">
                                    <label>Categories <span class="text-danger">*</span></label>
                                    @php $category= (isset($news)?$news->categories->pluck('category_id')->toArray():[]);
                                    @endphp
                                    <select class="form-control select2" name="categories[]" multiple="multiple" data-placeholder="Select a Categories" style="width: 100%;" required>

                                        @foreach($categories as $cat)
                                            <option {{(in_array($cat->id,$category)?"selected":"")}} value="{{$cat->id}}">{{$cat->category}}</option>
                                        @endforeach
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputFile">Image</label>
                                    <div class="input-group">
                                        <div class="custom-file">
                                            <input type="file" class="custom-file-input" id="exampleInputFile" name="image">
                                            <label class="custom-file-label" for="exampleInputFile">Choose file</label>
                                        </div>
                                        {{--                                        <div class="input-group-append">--}}
                                        {{--                                            <span class="input-group-text">Upload</span>--}}
                                        {{--                                        </div>--}}
                                    </div>
                                </div>
                                @if(isset($news)&&$news->image!='')
                                    <div class="form-group">
                                        <img src="{{\Storage::url('uploads/news/'.$news->image)}}" class="img-lg img-thumbnail ">
                                    </div>
                                @endif
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Featured</label>
                                    <div class="custom-control custom-switch custom-switch-off-danger custom-switch-on-success  ">
                                        <input type="checkbox" name="is_featured" class="custom-control-input " {{isset($news)&&$news->is_featured==1?'checked':''}}  id="is_featured" value="1">
                                        <label class="custom-control-label" for="is_featured"></label>
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
