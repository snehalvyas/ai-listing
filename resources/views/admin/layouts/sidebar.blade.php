<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="{{route('admin.dashboard')}}" class="brand-link">
        <img src="{{asset('admin/dist/img/AdminLTELogo.png')}}" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
        <span class="brand-text font-weight-light">AdminLTE 3</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar user panel (optional) -->
        <div class="user-panel mt-3 pb-3 mb-3 d-flex">
            <div class="image">
                <img src="{{(Auth::user()->profile_pic!=''?\Storage::url('uploads/users/'.Auth::user()->profile_pic):asset('admin/dist/img/dummy.jpg'))}}" class="img-circle elevation-2" alt="User Image">
            </div>
            <div class="info">
                <a href="#" class="d-block text-capitalize">{{ Auth::user()->first_name }} {{ Auth::user()->last_name }}</a>
            </div>
        </div>

        <!-- SidebarSearch Form -->
        <div class="form-inline">
            <div class="input-group" data-widget="sidebar-search">
                <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
                <div class="input-group-append">
                    <button class="btn btn-sidebar">
                        <i class="fas fa-search fa-fw"></i>
                    </button>
                </div>
            </div>
        </div>

        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                <!-- Add icons to the links using the .nav-icon class
                     with font-awesome or any other icon font library -->
                <li class="nav-item ">
                    <a href="{{route('admin.dashboard')}}" class="nav-link {{(request()->is('admin/dashboard')?'active':'')}}">
                        <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>
                            Dashboard
                        </p>
                    </a>

                </li>
                <li class="nav-item ">
                    <a href="{{route('admin.users.index')}}" class="nav-link {{(request()->is('admin/users')?'active':'')}}">
                        <i class="nav-icon fas fa-users"></i>
                        <p>
                            Users
                        </p>
                    </a>

                </li>
                                <li class="nav-item {{(request()->is('admin/parent-categories*')||request()->is('admin/categories*')?'menu-open':'')}}">
                                    <a href="#" class="nav-link {{(request()->is('admin/parent-categories*')||request()->is('admin/categories*')?'active':'')}}">
                                        <i class="nav-icon fas fa-copy"></i>
                                        <p>
                                            Categories
                                            <i class="fas fa-angle-left right"></i>
{{--                                            <span class="badge badge-info right">6</span>--}}
                                        </p>
                                    </a>
                                    <ul class="nav nav-treeview">
                                        <li class="nav-item ">
                                            <a href="{{route('admin.parent_categories.index')}}" class="nav-link {{(request()->is('admin/parent-categories*')?'active':'')}}">
                                                <i class="far fa-circle nav-icon"></i>
                                                <p>
                                                    Parent Categories
                                                </p>
                                            </a>
                                        </li>

                                        <li class="nav-item ">
                                            <a href="{{route('admin.categories.index')}}" class="nav-link {{(request()->is('admin/categories*')?'active':'')}}">
                                                <i class="far fa-circle nav-icon"></i>
                                                <p>
                                                    Categories
                                                </p>
                                            </a>
                                        </li>

                                    </ul>
                                </li>

                <li class="nav-item ">
                    <a href="{{route('admin.pricing_plan.index')}}" class="nav-link {{(request()->is('admin/pricing-plan*')?'active':'')}}">
                        <i class="nav-icon fas fa-money-check"></i>
                        <p>
                            Pricing Plan
                        </p>
                    </a>

                </li>
                <li class="nav-item ">
                    <a href="{{route('admin.features.index')}}" class="nav-link {{(request()->is('admin/features*')?'active':'')}}">
                        <i class="nav-icon fas fa-list-alt"></i>
                        <p>
                            Features
                        </p>
                    </a>

                </li>


                <li class="nav-item ">
                    <a href="{{route('admin.ai_tools.index')}}" class="nav-link {{(request()->is('admin/ai-tools*')?'active':'')}}">
                        <i class="nav-icon fas fa-tools"></i>
                        <p>
                            Ai-Tools
                        </p>
                    </a>
                </li>
                <li class="nav-item ">
                    <a href="{{route('admin.news.index')}}" class="nav-link {{(request()->is('admin/news*')?'active':'')}}">
                        <i class="nav-icon fas fa-newspaper"></i>
                        <p>
                            News
                        </p>
                    </a>
                </li>
                <li class="nav-item ">
                    <a href="{{route('admin.contactus.index')}}" class="nav-link {{(request()->is('admin/contact-us')?'active':'')}}">
                        <i class="nav-icon fas fa-address-book"></i>
                        <p>
                            Contact us
                        </p>
                    </a>
                </li>
                <li class="nav-item ">
                    <a href="{{route('admin.pages.index')}}" class="nav-link {{(request()->is('admin/pages*')?'active':'')}}">
                        <i class="nav-icon fas fa-list"></i>
                        <p>
                            Pages
                        </p>
                    </a>
                </li>
{{--                <li class="nav-item">--}}
{{--                    <a href="pages/widgets.html" class="nav-link">--}}
{{--                        <i class="nav-icon fas fa-th"></i>--}}
{{--                        <p>--}}
{{--                            Widgets--}}
{{--                            <span class="right badge badge-danger">New</span>--}}
{{--                        </p>--}}
{{--                    </a>--}}
{{--                </li>--}}
{{--                <li class="nav-item">--}}
{{--                    <a href="#" class="nav-link">--}}
{{--                        <i class="nav-icon fas fa-copy"></i>--}}
{{--                        <p>--}}
{{--                            Layout Options--}}
{{--                            <i class="fas fa-angle-left right"></i>--}}
{{--                            <span class="badge badge-info right">6</span>--}}
{{--                        </p>--}}
{{--                    </a>--}}
{{--                    <ul class="nav nav-treeview">--}}
{{--                        <li class="nav-item">--}}
{{--                            <a href="pages/layout/top-nav.html" class="nav-link">--}}
{{--                                <i class="far fa-circle nav-icon"></i>--}}
{{--                                <p>Top Navigation</p>--}}
{{--                            </a>--}}
{{--                        </li>--}}
{{--                        <li class="nav-item">--}}
{{--                            <a href="pages/layout/top-nav-sidebar.html" class="nav-link">--}}
{{--                                <i class="far fa-circle nav-icon"></i>--}}
{{--                                <p>Top Navigation + Sidebar</p>--}}
{{--                            </a>--}}
{{--                        </li>--}}
{{--                        <li class="nav-item">--}}
{{--                            <a href="pages/layout/boxed.html" class="nav-link">--}}
{{--                                <i class="far fa-circle nav-icon"></i>--}}
{{--                                <p>Boxed</p>--}}
{{--                            </a>--}}
{{--                        </li>--}}
{{--                        <li class="nav-item">--}}
{{--                            <a href="pages/layout/fixed-sidebar.html" class="nav-link">--}}
{{--                                <i class="far fa-circle nav-icon"></i>--}}
{{--                                <p>Fixed Sidebar</p>--}}
{{--                            </a>--}}
{{--                        </li>--}}
{{--                        <li class="nav-item">--}}
{{--                            <a href="pages/layout/fixed-sidebar-custom.html" class="nav-link">--}}
{{--                                <i class="far fa-circle nav-icon"></i>--}}
{{--                                <p>Fixed Sidebar <small>+ Custom Area</small></p>--}}
{{--                            </a>--}}
{{--                        </li>--}}
{{--                        <li class="nav-item">--}}
{{--                            <a href="pages/layout/fixed-topnav.html" class="nav-link">--}}
{{--                                <i class="far fa-circle nav-icon"></i>--}}
{{--                                <p>Fixed Navbar</p>--}}
{{--                            </a>--}}
{{--                        </li>--}}
{{--                        <li class="nav-item">--}}
{{--                            <a href="pages/layout/fixed-footer.html" class="nav-link">--}}
{{--                                <i class="far fa-circle nav-icon"></i>--}}
{{--                                <p>Fixed Footer</p>--}}
{{--                            </a>--}}
{{--                        </li>--}}
{{--                        <li class="nav-item">--}}
{{--                            <a href="pages/layout/collapsed-sidebar.html" class="nav-link">--}}
{{--                                <i class="far fa-circle nav-icon"></i>--}}
{{--                                <p>Collapsed Sidebar</p>--}}
{{--                            </a>--}}
{{--                        </li>--}}
{{--                    </ul>--}}
{{--                </li>--}}
                <li class="nav-item">
                    <a class="nav-link" href="{{ route('logout') }}"
                       onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                        <i class="nav-icon fas fa-power-off "></i>
                        {{ __('Logout') }}
                    </a>

                    <form id="logout-form" action="{{ route('logout') }}" method="POST" class="d-none">
                        @csrf
                    </form>
                </li>
            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>
