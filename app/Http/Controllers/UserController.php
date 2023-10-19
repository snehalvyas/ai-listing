<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Validator;

class UserController extends Controller
{
    public $successStatus = 200;
    /**
     * login api
     *
     * @return \Illuminate\Http\Response
     */
    public function index(){
        $users= User::where('role','!=','admin')->paginate(10);

        return view('admin.users.index',compact('users'));
    }
    public function login(){
        if(Auth::attempt(['email' => request('email'), 'password' => request('password'),'role'=>'user','status'=>1])){
            $user = Auth::user();
            $success['token'] =  $user->createToken('MyApp')->accessToken;
            $success['userId'] = $user->id;
            $success['email'] = $user->email;
            $success['username'] = $user->first_name.' '.$user->last_name;
            return response()->json(['success' => $success], $this->successStatus);
        }
        else{
            return response()->json(['error'=>'Unauthorised'], 401);
        }
    }
    public function logout(){
        $user = Auth::user()->token();
        $user->revoke();
        return response()->json([
            'success'=>true,
            'message' => 'Successfully logged out'
        ]);    }

    /**
     * Register api
     *
     * @return \Illuminate\Http\Response
     */
    public function register(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'first_name' => 'required',
            'last_name' => 'required',
            'email' => 'required|email|unique:users',
            'mobile_no' => 'required|numeric|unique:users',
            'password' => 'required',
            'c_password' => 'required|same:password',
        ],
            [
                'c_password.required' => "The confirm password field must match password.",
                'c_password.same' => "The confirm password field must match password.",
                ]
        );
        if ($validator->fails()) {
            return response()->json(['error'=>$validator->errors()], 401);
        }
        $input = $request->all();
        $input['password'] = Hash::make($input['password']);
        $input['role'] = 'user';
        $input['status'] = 1;
        $user = User::create($input);
        $success['token'] =  $user->createToken('MyApp')->accessToken;
        $success['name'] =  $user->firts_name;
        return response()->json(['success'=>$success], $this->successStatus);
    }

    /**
     * details api
     *
     * @return \Illuminate\Http\Response
     */
    public function userDetails()
    {
        $user = Auth::user();
        return response()->json(['success' => $user], $this-> successStatus);
    }
    public function profile(){
     return view('admin.profile');
    }
    public function profile_update(Request $request){
        $this->validate($request, [
            'first_name' => 'required',
            'last_name' => 'required',
            'mobile_no' => 'required|numeric',
        ]);
        $data = $request->all();
        $user = User::find(auth()->user()->id);
        if ($request->hasFile('profile_pic')) {
            if ($user->profile_pic!=''){
                \Storage::delete('public/uploads/users/'.$user->profile_pic);
            }

            // put image in the public storage
            $filePath = \Storage::disk('public')->put('uploads/users', request()->file('profile_pic'));
            $data['profile_pic'] = $request->file('profile_pic')->hashName();
        }

        $user->fill($data);
        $user->save();
        return back()->with('success','Profile updated successfully.');;
    }
    public function change_password(Request $request){
        $this->validate($request, [
            'current_password'     => 'required',
            'new_password'     => 'required|min:8',
            'confirm_password' => 'required|same:new_password',
        ]);

        $data = $request->all();

        $user = User::find(auth()->user()->id);

        if(!\Hash::check($data['current_password'], $user->password)){

            return back()->with('error','You have entered wrong current password');

        }else{
            $user->password = Hash::make($request->new_password);
            $user->save();
            return back()->with('success','Password changed successfully.');;
        }

    }
    public function edit(Request $request,$id){

    }
}
