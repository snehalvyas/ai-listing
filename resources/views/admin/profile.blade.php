@extends('admin.layouts.master')

@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Profile</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Home</a></li>
                        <li class="breadcrumb-item active">Profile</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-3">
@php
    $user = auth()->user();
@endphp
                    <!-- Profile Image -->
                    <div class="card card-primary card-outline">
                        <div class="card-body box-profile">
                            <div class="text-center">
                                <img class="profile-user-img img-fluid img-circle"
                                     src="{{($user->profile_pic!=''?\Storage::url('uploads/users/'.$user->profile_pic):asset('admin/dist/img/dummy.jpg'))}}"
                                     alt="User profile picture">
                            </div>

                            <h3 class="profile-username text-center text-uppercase">{{$user->first_name}} {{$user->last_name}}</h3>

                            <p class="text-muted text-center">{{ucfirst($user->role)}}</p>

                            <ul class="list-group list-group-unbordered mb-3">
                                <li class="list-group-item">
                                    <b>First Name</b> <a class="float-right">{{$user->first_name}}</a>
                                </li>
                                <li class="list-group-item">
                                    <b>Last Name</b> <a class="float-right">{{$user->last_name}}</a>
                                </li>
                                <li class="list-group-item">
                                    <b>Email</b> <a class="float-right">{{$user->email}}</a>
                                </li>
                                <li class="list-group-item">
                                    <b>Mobile</b> <a class="float-right">{{$user->mobile_no}}</a>
                                </li>
{{--                                <li class="list-group-item">--}}
{{--                                    <b>Friends</b> <a class="float-right">13,287</a>--}}
{{--                                </li>--}}
                            </ul>

                        </div>
                        <!-- /.card-body -->
                    </div>
                    <!-- /.card -->

                    <!-- About Me Box -->
{{--                    <div class="card card-primary">--}}
{{--                        <div class="card-header">--}}
{{--                            <h3 class="card-title">About Me</h3>--}}
{{--                        </div>--}}
{{--                        <!-- /.card-header -->--}}
{{--                        <div class="card-body">--}}
{{--                            <strong><i class="fas fa-book mr-1"></i> Education</strong>--}}

{{--                            <p class="text-muted">--}}
{{--                                B.S. in Computer Science from the University of Tennessee at Knoxville--}}
{{--                            </p>--}}

{{--                            <hr>--}}

{{--                            <strong><i class="fas fa-map-marker-alt mr-1"></i> Location</strong>--}}

{{--                            <p class="text-muted">Malibu, California</p>--}}

{{--                            <hr>--}}

{{--                            <strong><i class="fas fa-pencil-alt mr-1"></i> Skills</strong>--}}

{{--                            <p class="text-muted">--}}
{{--                                <span class="tag tag-danger">UI Design</span>--}}
{{--                                <span class="tag tag-success">Coding</span>--}}
{{--                                <span class="tag tag-info">Javascript</span>--}}
{{--                                <span class="tag tag-warning">PHP</span>--}}
{{--                                <span class="tag tag-primary">Node.js</span>--}}
{{--                            </p>--}}

{{--                            <hr>--}}

{{--                            <strong><i class="far fa-file-alt mr-1"></i> Notes</strong>--}}

{{--                            <p class="text-muted">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam fermentum enim neque.</p>--}}
{{--                        </div>--}}
{{--                        <!-- /.card-body -->--}}
{{--                    </div>--}}
                    <!-- /.card -->
                </div>
                <!-- /.col -->
                <div class="col-md-9">
                    <div class="card">
                        <div class="card-header p-2">
                            <ul class="nav nav-pills">
                                <li class="nav-item"><a class="nav-link active" href="#profile" data-toggle="tab">Profile</a></li>
                                <li class="nav-item"><a class="nav-link" href="#change_password" data-toggle="tab">Change Password</a></li>
{{--                                <li class="nav-item"><a class="nav-link" href="#settings" data-toggle="tab">Settings</a></li>--}}
                            </ul>
                        </div><!-- /.card-header -->
                        <div class="card-body">
                            <div class="tab-content">
                                <div class="tab-pane active" id="profile">
                                    <form class="form-horizontal" action="{{route('admin.profile_update')}}" method="post" id="quickForm" enctype="multipart/form-data">
                                        @csrf
                                        <div class="form-group row">
                                            <label for="inputName" class="col-sm-2 col-form-label">First Name</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="inputName" name="first_name" value="{{$user->first_name}}" placeholder="Name" required>
                                            </div>
                                            @error('first_name')
                                            <span class="text text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>
                                        <div class="form-group row">
                                            <label for="inputName2" class="col-sm-2 col-form-label">Last Name</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="inputName2" name="last_name" value="{{$user->last_name}}" placeholder="Name" required>
                                            </div>
                                            @error('last_name')
                                            <span class="text text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>
                                        <div class="form-group row">
                                            <label for="inputSkills" class="col-sm-2 col-form-label">Mobile</label>
                                            <div class="col-sm-10">
                                                <input type="number" maxlength="10" minlength="10" class="form-control" id="inputSkills" required name="mobile_no" placeholder="Mobile No" value="{{$user->mobile_no}}">
                                            </div>
                                            @error('mobile_no')
                                            <span class="text text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>
                                        <div class="form-group row">
                                            <label for="exampleInputFile" class="col-sm-2 col-form-label">Profile Image</label>
                                            <div class="col-sm-10 input-group">
                                                <div class="custom-file">
                                                    <input type="file" class="custom-file-input" id="exampleInputFile" name="profile_pic">
                                                    <label class="custom-file-label" for="exampleInputFile">Choose file</label>
                                                </div>
                                            </div>
                                            @error('profile_pic')
                                            <span class="text text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>
                                        <div class="form-group row">
                                            <div class="offset-sm-2 col-sm-10">
                                                <button type="submit" onclick="return confirm('Update Profile?')" class="btn btn-danger">Submit</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                <div class="tab-pane" id="change_password">
                                    <form class="form-horizontal" action="{{route('admin.change_password')}}" method="post"  id="changePassword" enctype="multipart/form-data">
                                        @csrf
                                        <div class="form-group row">
                                            <label for="inputName" class="col-sm-2 col-form-label">Current Password</label>
                                            <div class="col-sm-10">
                                                <input type="password" class="form-control" id="current_password" name="current_password" data-msg="Enter Current Password"  placeholder="********" required>
                                            </div>
                                            @error('current_password')
                                            <span class="text text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>
                                        <div class="form-group row">
                                            <label for="inputName" class="col-sm-2 col-form-label">New Password</label>
                                            <div class="col-sm-10">
                                                <input type="password" class="form-control" id="new_password" name="new_password"  placeholder="********" required>
                                            </div>
                                            @error('new_password')
                                            <span class="text text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>
                                        <div class="form-group row">
                                            <label for="inputName" class="col-sm-2 col-form-label">Re-Enter Password</label>
                                            <div class="col-sm-10">
                                                <input type="password" class="form-control" id="confirm_password" name="confirm_password" placeholder="********" required>
                                            </div>
                                            @error('confirm_password')
                                            <span class="text text-danger">{{ $message }}</span>
                                            @enderror
                                        </div>


                                        <div class="form-group row">
                                            <div class="offset-sm-2 col-sm-10">
                                                <button type="submit"  class="btn btn-danger">Submit</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                                <!-- /.tab-pane -->
                            </div>
                            <!-- /.tab-content -->
                        </div><!-- /.card-body -->
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
