@extends('layouts.app')

@section('content')
	<div class="container">
    	<h1> by College {{$var}} </h1>
    	@include('incs.collegebuttons')
    	@include('incs.collegeforms')
    </div>
@endsection