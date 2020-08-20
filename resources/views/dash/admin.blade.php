@extends('layouts.app')

@section('content')
<div class="col-md-6 col-lg-6 col-md-offset-3 col-lg-offset-3">
    <div class="panel panel-primary ">
      <div class="panel-heading"><h3>Sub Admin    &nbsp;&nbsp;    
          
          
                            <a  class="pull-right btn btn-primary btm-sm" href="/reg">Add New Sub Adminr</a></h3></div>
                     
          
         
      <div class="panel-body">
    <ul class="list-group">
       
        @foreach($users as $user)
      <li class="list-group-item">{{$user->name}}</li>
        @endforeach
       
    </ul>
      </div>
    </div>
</div>
@endsection