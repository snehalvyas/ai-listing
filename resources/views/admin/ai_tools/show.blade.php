@extends('admin.layouts.master')

@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Tool Detail</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">Tool Detail</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">

        <!-- Default box -->
        <div class="card">
            <div class="card-header">
                <h3 class="card-title"><a class="btn btn-primary" href="{{route('admin.ai_tools.index')}}"><i class="fa fa-backward"></i> Back</a></h3>

                <div class="card-tools">
                    <button type="button" class="btn btn-tool" data-card-widget="collapse" title="Collapse">
                        <i class="fas fa-minus"></i>
                    </button>
                    <button type="button" class="btn btn-tool" data-card-widget="remove" title="Remove">
                        <i class="fas fa-times"></i>
                    </button>
                </div>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col-12 col-md-12 col-lg-8 order-2 order-md-1">
                        <div class="row">
                            <div class="col-12 col-sm-4">
                                <div class="info-box bg-light">
                                    <div class="info-box-content">
                                        <span class="info-box-text text-center text-muted">Favourites</span>
                                        <span class="info-box-number text-center text-muted mb-0">{{$aiTool->allUserfavourites->count()}}</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-sm-4">
                                <div class="info-box bg-light">
                                    <div class="info-box-content">
                                        <span class="info-box-text text-center text-muted">Total Reviews</span>
                                        <span class="info-box-number text-center text-muted mb-0">{{$aiTool->review->count()}}</span>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12 col-sm-4">
                                <div class="info-box bg-light">
                                    <div class="info-box-content">
                                        <span class="info-box-text text-center text-muted">Total Views</span>
                                        <span class="info-box-number text-center text-muted mb-0">{{$aiTool->total_views??0}}</span>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="col-12">
                            <h3 class="text-primary"><i class="fas fa-tools"></i> {{$aiTool->tool_name}}</h3>
                            <p class="text-muted">{{$aiTool->short_description}}</p>
                            <br>
                            <div class="row">
                                <div class="col-3">
                                    <div class="text-muted">
                                        <p class="text-sm">Pricing Plan

                                            @foreach($aiTool->pricingPlans as $p)
                                                <b class="d-block"><i class="{{$p->pricingPlanMaster->icon}}"></i> {{$p->pricingPlanMaster->plan}}</b>
                                            @endforeach
                                        </p>
                                        <p class="text-sm">Features
                                            @foreach($aiTool->features as $f)
                                                <b class="d-block"><i class="{{$f->featureMaster->icon}}"></i> {{$f->featureMaster->feature}}</b>
                                            @endforeach
                                        </p>
                                    </div>
                                    <h5 class="mt-5 text-muted">Categories</h5>
                                    <ul class="list-unstyled">
                                        @foreach($aiTool->categories as $cat)
                                            <li>
                                                <a href="" class="btn-link text-secondary"><i class="{{$cat->categories->icon}}"></i> {{$cat->categories->category}}</a>
                                            </li>
                                        @endforeach
                                    </ul>
                                </div>
                                <div class="col-9">
                                    {!! $aiTool->tool_description !!}

                                </div>
                            </div>
{{--                            <div class="text-center mt-5 mb-3">--}}
{{--                                <a href="#" class="btn btn-sm btn-primary">Add files</a>--}}
{{--                                <a href="#" class="btn btn-sm btn-warning">Report contact</a>--}}
{{--                            </div>--}}
                        </div>
                    </div>
                    <div class="col-12 col-md-12 col-lg-4 order-1 order-md-2">
                        <div class="row">
                            <div class="col-12">
                                <div class="float-right ">
                                    @php
                                        $avg=$aiTool->review->avg('star');
                                         $s=0;
                                     @endphp
                                    @for($i=0;$i<5;$i++)
                                        @if($avg-$i>=1)
                                            <i class="text-warning fa fa-star"></i>
                                        @elseif(is_float($avg-$i)&&$avg-$i>0)
                                            <i class="text-warning fa fa-star-half-alt"></i>
                                        @else
                                            <i class="far fa-star text-warning fa-1x "></i>
                                        @endif
                                    @endfor
                                </div>
                                <h4>Reviews </h4>

                                @foreach($aiTool->review as $k=>$r)
                                <div class="post {{($k%2==0?'':'clearfix')}}">
                                    <div class="user-block">
                                        <img class="img-circle img-bordered-sm" src="{{($r->user->profile_pic!=''?\Storage::url('uploads/users/'.$r->user->profile_pic):asset('admin/dist/img/dummy.jpg'))}}" alt="user image">
                                        <span class="username text-capitalize">
                                           <a href="#">{{$r->user->first_name}} {{$r->user->last_name}}</a>
                                        </span>
                                        <span class="description">Shared publicly - {{$r->created_at}}</span>
                                    </div>
                                    <!-- /.user-block -->
                                    <p>
                                       {{$r->review}}
                                    </p>
                                   <p>
                                       @for($i=1;$i<=5;$i++)
                                           <i class="{{($r->star>=$i?"fa fa-star text-warning fa-1x ":'far fa-star text-warning fa-1x ')}}"></i>
                                       @endfor
                                   </p>
                                    <p>
                                        <a href="#" class="link-muted text-sm "><i class="fas fa-thumbs-up text-success "></i> {{$r->likeDislike()->where('like',1)->count()}}</a>
                                        <a href="#" class="link-black text-sm float-right"><i class="fas fa-thumbs-down text-danger"></i> {{$r->likeDislike()->where('like',0)->count()}}</a>
                                    </p>
                                </div>
                                @endforeach
{{--                                <div class="post clearfix">--}}
{{--                                    <div class="user-block">--}}
{{--                                        <img class="img-circle img-bordered-sm" src="../../dist/img/user7-128x128.jpg" alt="User Image">--}}
{{--                                        <span class="username">--}}
{{--                          <a href="#">Sarah Ross</a>--}}
{{--                        </span>--}}
{{--                                        <span class="description">Sent you a message - 3 days ago</span>--}}
{{--                                    </div>--}}
{{--                                    <!-- /.user-block -->--}}
{{--                                    <p>--}}
{{--                                        Lorem ipsum represents a long-held tradition for designers,--}}
{{--                                        typographers and the like. Some people hate it and argue for--}}
{{--                                        its demise, but others ignore.--}}
{{--                                    </p>--}}
{{--                                    <p>--}}
{{--                                        <a href="#" class="link-black text-sm"><i class="fas fa-link mr-1"></i> Demo File 2</a>--}}
{{--                                    </p>--}}
{{--                                </div>--}}


                            </div>
                        </div>

                    </div>
                </div>
            </div>
            <!-- /.card-body -->
        </div>
        <!-- /.card -->

    </section>
    <!-- /.content -->
@endsection
