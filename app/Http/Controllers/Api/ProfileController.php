<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Validator;

class ProfileController extends Controller
{
    public $successStatus = 200;

    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }
    public function getUserDetails(Request $request)
    {
        $user= $request->user();
        unset($user->id,$user->ip_address,$user->role,$user->otp,$user->status,$user->created_at,$user->updated_at);
        return $user;
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function profileUpdate(Request $request)
    {
        $user=auth()->user();
        $validator = Validator::make($request->all(), [
            'first_name' => 'required',
            'last_name' => 'required',
            'email' => 'required|email|unique:users,email,'.$user->id,
            'mobile_no' => 'required|numeric|unique:users,mobile_no,'.$user->id,
//            'password' => 'required',
//            'c_password' => 'required|same:password',
        ]
        );
        if ($validator->fails()) {
            return response()->json(['error'=>$validator->errors()], 401);
        }
        $input = $request->all();
        $user->update($input);
//        $success['token'] =  $user->createToken('MyApp')->accessToken;
//        $success['name'] =  $user->firts_name;
        return response()->json(['success'=>1], $this->successStatus);
    }
    public function changePassword(Request $request)
    {
        $user=auth()->user();
        $validator = Validator::make($request->all(), [
            'current_password' => 'required',
            'password' => 'required|min:8',
            'confirm_password' => 'required|same:password',
        ]
        );
        if ($validator->fails()) {
            return response()->json(['error'=>$validator->errors()], 401);
        }

        $user->update(['password'=>Hash::make($request->password)]);
//        $success['token'] =  $user->createToken('MyApp')->accessToken;
//        $success['name'] =  $user->firts_name;
        return response()->json(['success'=>1], $this->successStatus);
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }
}
