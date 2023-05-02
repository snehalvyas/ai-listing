@extends('admin.layouts.master')

@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Pricing Plan</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">Pricing Plan</li>
                        <li class="breadcrumb-item active">{{(isset($pricingPlan)?'Edit':'Create')}}</li>
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
                            <h3 class="card-title">{{(isset($pricingPlan)?'Edit':'Create')}}</h3>
                        </div>
                        <!-- /.card-header -->
                        <!-- form start -->
                        <form method="post" action="{{(isset($pricingPlan)?route('admin.pricing_plan.update',$pricingPlan->id):route('admin.pricing_plan.store'))}}" id="quickForm">
                            @csrf
                            @if(isset($pricingPlan))
                            @method('PATCH')
                            @endif
                            <div class="card-body">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Plan <span class="text-danger">*</span></label>
                                    <input type="text" class="form-control" name="plan" id="plan" value="{{ (isset($pricingPlan)?$pricingPlan->plan:old('plan')) }}" placeholder="Plan" @error('plan') is-invalid @enderror required>
                                    @error('paln')
                                    <span class="text text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                                @php
                                    $icons = getIcons();
                                @endphp
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Icon <span class="text-danger">*</span></label>

                                    @foreach($icons as $k=>$i)
                                        <div class="custom-control custom-radio">
                                            <input {{ (isset($pricingPlan)&&$pricingPlan->icon==$i?'checked':'') }} class="custom-control-input custom-control-input-danger" value="{{$i}}" type="radio" id="customRadio{{$k}}" name="icon" required>
                                            <label for="customRadio{{$k}}" class="custom-control-label"><i class="{{$i}}" ></i>  {{$i}}</label>
                                        </div>
                                    @endforeach
                                    @error('icon')
                                    <span class="text text-danger">{{ $message }}</span>
                                    @enderror
                                </div>
                                {{--                                <div class="form-group">--}}
                                {{--                                    <label for="exampleInputFile">File input</label>--}}
                                {{--                                    <div class="input-group">--}}
                                {{--                                        <div class="custom-file">--}}
                                {{--                                            <input type="file" class="custom-file-input" id="exampleInputFile">--}}
                                {{--                                            <label class="custom-file-label" for="exampleInputFile">Choose file</label>--}}
                                {{--                                        </div>--}}
                                {{--                                        <div class="input-group-append">--}}
                                {{--                                            <span class="input-group-text">Upload</span>--}}
                                {{--                                        </div>--}}
                                {{--                                    </div>--}}
                                {{--                                </div>--}}

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
