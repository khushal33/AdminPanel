<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use Illuminate\Support\Facades\Auth;
class CreateController extends Controller
{
    //
      public function index(){
         
    }
    
        public function edit()
    {
        //
        $user = User::find(Auth::user()->id);
   
        return view('subadmin.edit',['users' => $user]);
    }


    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\User  $user
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,$id)
    {
        //
         $userUpdate = User::where('id',$id)->update(['name'=>$request->input('name'),'email'=>$request->input('email'),'phone'=>$request->input('phone'),'gender'=>$request->input('gender'),'address'=>$request->input('address')]);
        
        if($userUpdate){
            return redirect()->route('home')->with('success','User Updated Successfully');
        }
         return back()->withInput(); 
        
    }
}
