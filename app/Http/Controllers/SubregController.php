<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
class SubregController extends Controller
{
    //
    public function index(){
        return view('subadmin.subreg');
    }
    
     public function store(Request $request)
    {
      
            
             if(Auth::check()){
            $subadmin=User::create([
              
                'name'=>$request->input('name'),
                'email'=>$request->input('email'),
                'phone'=>$request->input('phone'),
                'gender'=>$request->input('gender'),
                'address'=>$request->input('address'),
                'password'=> Hash::make($request->input('password')),
                'subadmin_id'=>Auth::user()->id
            ]);
            
            if($subadmin){
                return back()->with('success','User Created Sucessfully');
            }
        }
            return back()->with('errors','Errors creating new User');
    }
}
