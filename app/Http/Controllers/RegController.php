<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
class RegController extends Controller
{
    //
   
    public function index(){
        return view('dash.register');
    }
    
    public function store(Request $request)
    {
      
            
             if(Auth::check()){
            $subadmin=User::create([
              
                'name'=>$request->input('name'),
                'email'=>$request->input('email'),
                'phone'=>$request->input('phone'),
                'password'=> Hash::make($request->input('password')),
                'role_id'=>'2',
            ]);
            
            if($subadmin){
                return back()->with('success','Sub Admin Created Sucessfully');
            }
        }
            return back()->with('errors','Errors creating new Sub Admin');
    }
}
