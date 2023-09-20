<?php

namespace App\Http\Controllers;

use App\Models\AiTools;
use App\Models\News;
use App\Models\User;
use Carbon\Carbon;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('home');
    }
    public function dashboard(){
        $count['allTool']= AiTools::count();
        $count['verifiedTool']=AiTools::where('verified',1)->count();
        $count['unVerifiedTool']=AiTools::where('verified',0)->count();
        $count['allUser']=User::where('role','!=','admin')->count();
        $count['pendingTools']=AiTools::where('status',0)->count();
        $count['todayReg']=User::whereDate('created_at',Carbon::now())->count();
        $count['todayTools']=AiTools::whereDate('created_at',Carbon::now())->count();
        $count['todayNews']=News::whereDate('created_at',Carbon::now())->count();

        return view('admin.dashboard',compact('count'));
    }
}
