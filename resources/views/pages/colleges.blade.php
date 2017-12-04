@extends('layouts.app')

@section('content')
	<div class="container">
    	<h1> Colleges </h1>
    	@include('incs.collegebuttons')

   	 	<div class="well">
        	<a href="/colleges/create" class="btn btn-primary"> Add college </a>
    	</div>
    </div>
@endsection

