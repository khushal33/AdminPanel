@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Dashboard') }}</div>

                <div class="card-body">
                    @if (Auth::user()->role_id == 3)
                         <a  class="pull-right btn btn-primary btm-sm" href="/edit">Edit Profile</a>
                           
                        </div>
                    @endif

                    
                </div>
            </div>
        </div>
    </div>

@endsection
