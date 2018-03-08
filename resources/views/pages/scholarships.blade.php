@extends('layouts.app')

@section('content')
	<div class="container">
    	<h1 style="text-align:left"> Scholarships </h1>
    	<!-- "margin-left:110px -->
    	@include('incs.scholarshipbuttons')
		<br>
    	<div class="well">
    	    <a href="/scholarships/create" class="btn btn-primary"> Add scholarship </a>
	    </div>
	</div>
@endsection