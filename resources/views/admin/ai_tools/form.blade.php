@extends('admin.layouts.master')

@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Ai-Tool</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">Ai-Tool</li>
                        <li class="breadcrumb-item active">Startup Details  / {{(isset($aiTool)?'Edit':'Create')}}</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <form method="post" action="{{(isset($aiTool)?route('admin.ai_tools.update',$aiTool->id):route('admin.ai_tools.store'))}}" id="quickForm" enctype="multipart/form-data">
            @csrf
            @if(isset($aiTool))
                @method('PATCH')
            @endif
                <!-- left column -->
                 <div class="card card-primary">
                    <div class="card-header">
                        <h3 class="card-title">{{(isset($aiTool)?'Edit':'Create')}}</h3>
                        <div class="card-tools">
                            <button type="button" class="btn btn-tool" data-card-widget="collapse">
                                <i class="fas fa-minus"></i>
                            </button>
                            <button type="button" class="btn btn-tool" data-card-widget="remove">
                                <i class="fas fa-times"></i>
                            </button>
                        </div>
                    </div>
                    <!-- /.card-header -->
                    <!-- form start -->

                        <div class="card-body">
                            <div class="row">
                                <div class="col-md-12">

                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Tool Name <span class="text-danger">*</span></label>
                                                <input type="text" class="form-control" name="tool_name" id="tool_name" value="{{ (isset($aiTool)?$aiTool->tool_name:old('tool_name')) }}" placeholder="Tool Name" @error('tool_name') is-invalid @enderror required>
                                                @error('tool_name')
                                                <span class="text text-danger">{{ $message }}</span>
                                                @enderror
                                            </div>

                                        </div>
                                        <div class="col-md-6">
                                            <div class="form-group">
                                                <label for="exampleInputEmail1">Website URL <span class="text-danger">*</span></label>
                                                <input type="text" class="form-control" name="website_url" id="website_url" value="{{ (isset($aiTool)?$aiTool->website_url:old('website_url')) }}" placeholder="Website URL" @error('website_url') is-invalid @enderror required>
                                                @error('website_url')
                                                <span class="text text-danger">{{ $message }}</span>
                                                @enderror
                                            </div>
                                        </div>
                                    </div>

                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Tool's short description</label>
                                            <textarea class="form-control" name="short_description" id="short_description"  placeholder="Short Description"  @error('short_description') is-invalid @enderror >{{ (isset($aiTool)?$aiTool->short_description:old('short_description')) }}</textarea>
                                            @error('short_description')
                                            <span class="text text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>

                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Tool Description</label>
                                            <textarea class="form-control summernote" data-msg="Write something:)" name="tool_description" id="tool_description" placeholder="Page Content" @error('tool_description') is-invalid @enderror >@if(isset($aiTool)){!! html_entity_decode($aiTool->tool_description) !!}@else{{old('tool_description')}}@endif</textarea>
                                            @error('tool_description')
                                            <span class="text text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>


                                </div>
                            </div>

                        </div>
                        <!-- /.card-body -->

                </div>
                 <div class="card card-primary">
                    <div class="card-header">
                        <h3 class="card-title">Additional Details</h3>
                        <div class="card-tools">
                            <button type="button" class="btn btn-tool" data-card-widget="collapse">
                                <i class="fas fa-minus"></i>
                            </button>
                            <button type="button" class="btn btn-tool" data-card-widget="remove">
                                <i class="fas fa-times"></i>
                            </button>
                        </div>
                    </div>
                    <!-- /.card-header -->
                    <!-- form start -->

                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-12">

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Select categories (max 3)<span class="text-danger">*</span></label>
                                            @php $category= (isset($aiTool)?$aiTool->categories->pluck('category_id')->toArray():(old('categories')??[]));
                                            @endphp
                                            <select class="form-control select2" name="categories[]" multiple="multiple" data-placeholder="Select Categories" style="width: 100%;" required>

                                                @foreach($categories as $cat)
                                                    <option {{(in_array($cat->id,$category)?"selected":"")}} value="{{$cat->id}}">{{$cat->category}}</option>
                                                @endforeach
                                            </select>
                                            @error('categories')
                                            <span class="text text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Select Features</label>
                                            @php $feature= (isset($aiTool)?$aiTool->features->pluck('feature_id')->toArray():(old('features')??[]));
                                            @endphp
                                            <select class="form-control select2" name="features[]" multiple="multiple" data-placeholder="Select a Features" style="width: 100%;" >

                                                @foreach($features as $f)
                                                    <option {{(in_array($f->id,$feature)?"selected":"")}} value="{{$f->id}}">{{$f->feature}}</option>
                                                @endforeach
                                            </select>
                                            @error('features')
                                            <span class="text text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>
                                    </div>

                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label>Pricing - Select freemium if your tool has both paid and free versions <span class="text-danger">*</span></label>
                                            @php $pricing_plan= (isset($aiTool)?$aiTool->pricingPlans->pluck('pricing_plan_id')->toArray():(old('pricing_plans')??[]));
                                            @endphp
                                            <select class="form-control select2" name="pricing_plans[]" multiple="multiple" data-placeholder="Select a Plan" style="width: 100%;" required>

                                                @foreach($pricing_plans as $p)
                                                    <option {{(in_array($p->id,$pricing_plan)?"selected":"")}} value="{{$p->id}}">{{$p->plan}}</option>
                                                @endforeach
                                            </select>
                                            @error('pricing_plans')
                                            <span class="text text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Starting Price</label>
                                            <input type="text" class="form-control" name="starting_price" id="starting_price" value="{{ (isset($aiTool)?$aiTool->starting_price:old('starting_price')) }}" placeholder="Starting Price" @error('tool_name') is-invalid @enderror >
                                            @error('starting_price')
                                            <span class="text text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>

                                    </div>
                                </div>


                            </div>
                        </div>

                    </div>
                    <!-- /.card-body -->

                </div>
                <div class="card card-primary">
                    <div class="card-header">
                        <h3 class="card-title">Social Links</h3>
                        <div class="card-tools">
                            <button type="button" class="btn btn-tool" data-card-widget="collapse">
                                <i class="fas fa-minus"></i>
                            </button>
                            <button type="button" class="btn btn-tool" data-card-widget="remove">
                                <i class="fas fa-times"></i>
                            </button>
                        </div>
                    </div>
                    <!-- /.card-header -->
                    <!-- form start -->

                    <div class="card-body">
                        <div class="row">
                            <div class="col-md-12">

                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Instagram <i class="fab fa-instagram text-pink"></i></label>
                                            <input type="url" class="form-control" name="insta_url" id="insta_url" value="{{ (isset($aiTool)?$aiTool->insta_url:old('insta_url')) }}" placeholder="Instagram" @error('tool_name') is-invalid @enderror >
                                            @error('insta_url')
                                            <span class="text text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>

                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Facebook <i class="fab fa-facebook text-info"></i></label>
                                            <input type="url" class="form-control" name="fb_url" id="fb_url" value="{{ (isset($aiTool)?$aiTool->fb_url:old('fb_url')) }}" placeholder="Facebbok" @error('fb_url') is-invalid @enderror >
                                            @error('fb_url')
                                            <span class="text text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>

                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Tweeter <i class="fab fa-twitter text-info"></i></label>
                                            <input type="url" class="form-control" name="twitter_url" id="twitter_url" value="{{ (isset($aiTool)?$aiTool->twitter_url:old('twitter_url')) }}" placeholder="Instagram" @error('tool_name') is-invalid @enderror >
                                            @error('tool_name')
                                            <span class="text text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>

                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Youtube <i class="fab fa-youtube text-danger"></i></label>
                                            <input type="url" class="form-control" name="youtube_url" id="youtube_url" value="{{ (isset($aiTool)?$aiTool->youtube_url:old('youtube_url')) }}" placeholder="Youtube" @error('tool_name') is-invalid @enderror >
                                            @error('youtube_url')
                                            <span class="text text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>

                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Email <i class="fas fa-envelope  text-orange"></i></label>
                                            <input type="email" class="form-control" name="email_link" id="email_link" value="{{ (isset($aiTool)?$aiTool->email_link:old('email_link')) }}" placeholder="Email" @error('email_link') is-invalid @enderror >
                                            @error('email_link')
                                            <span class="text text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>

                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Video Review <i class="fa fa-video text-muted"></i></label>
                                            <input type="url" class="form-control" name="video_review" id="video_review" value="{{ (isset($aiTool)?$aiTool->video_review:old('video_review')) }}" placeholder="Video Review" @error('tool_name') is-invalid @enderror >
                                            @error('video_review')
                                            <span class="text text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>

                                    </div>

                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <h6><label for="exampleInputEmail1">Are you associated with the product or company? <span class="text-danger">*</span></label></h6>
                                            <div class="custom-control custom-radio d-inline">
                                                <input {{ (isset($aiTool)&&(($aiTool->associated_with_product??old('associated_with_product'))==1)?'checked':'') }} class="custom-control-input custom-control-input-danger" value="1" type="radio" id="yes" name="associated_with_product" required>
                                                <label for="yes" class="custom-control-label">Yes</label>
                                            </div>
                                            <div class="custom-control custom-radio d-inline">
                                                <input {{ (isset($aiTool)&&(($aiTool->associated_with_product??old('associated_with_product'))==0)?'checked':'') }} class="custom-control-input custom-control-input-danger" value="0" type="radio" id="no" name="associated_with_product" required>
                                                <label for="no" class="custom-control-label">No</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="exampleInputEmail1">Verified <i class="fas fa-check-circle text-primary"></i></label>
                                            <div class="custom-control custom-switch custom-switch-off-danger custom-switch-on-success  ">
                                                <input type="checkbox" name="verified" class="custom-control-input " {{isset($aiTool)&&($aiTool->verified==1||old('verified')==1)?'checked':''}}  id="customSwitch" value="1">
                                                <label class="custom-control-label" for="customSwitch"></label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label for="exampleInputFile">Image</label>
                                            <div class="input-group">
                                                <div class="custom-file">
                                                    <input type="file" class="custom-file-input" id="exampleInputFile" name="image">
                                                    <label class="custom-file-label" for="exampleInputFile">Choose file</label>
                                                </div>
                                            </div>
                                            @error('image')
                                            <span class="text text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>
                                    </div>
                                    @if(isset($aiTool)&&$aiTool->image!='')
                                    <div class="col-md-3">

                                            <div class="form-group">
                                                <img src="{{asset(\Storage::url('uploads/ai_tools/'.$aiTool->image))}}" class="img-lg img-thumbnail " >
                                            </div>
                                    </div>
                                    @endif
{{--                                    <div class="col-sm-6">--}}
{{--                                        <!-- radio -->--}}
{{--                                        <div class="form-group clearfix">--}}
{{--                                            <label for="exampleInputEmail1">Are you associated with the product or company?<i class="fas fa-check-circle text-primary"></i></label>--}}
{{--                                            <div class="icheck-primary d-inline">--}}
{{--                                                <input {{ (isset($aiTool)&&$aiTool->associated_with_product==1?'checked':'') }} class="custom-control-input custom-control-input-danger" value="1" type="radio" id="yes" name="associated_with_product" required>--}}
{{--                                                <label for="yes" class="custom-control-label">Yes</label>--}}
{{--                                            </div>--}}
{{--                                            <div class="icheck-primary d-inline">--}}
{{--                                                <input {{ (isset($aiTool)&&$aiTool->associated_with_product==0?'checked':'') }} class="custom-control-input custom-control-input-danger" value="0" type="radio" id="no" name="associated_with_product" required>--}}
{{--                                                <label for="no" class="custom-control-label">No</label>--}}
{{--                                            </div>--}}

{{--                                        </div>--}}
{{--                                    </div>--}}




                                </div>


                            </div>
                        </div>

                    </div>
                    <!-- /.card-body -->

                </div>
                <div class="row">
                    <div class="col-12">
                        <a href="{{route('admin.ai_tools.index')}}" class="btn btn-secondary">Back</a>
                        <input type="submit" value="Submit" class="btn btn-success float-right">
                    </div>
                </div>
                <!-- /.row -->

            <!-- /.container-fluid -->
            </form>
        </div>

    </section>
    <!-- jquery-validation -->

    <!-- /.content -->
@endsection
