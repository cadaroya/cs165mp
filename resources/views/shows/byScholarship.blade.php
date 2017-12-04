@extends('layouts.app')

@section('content')
	<div class="container">
	    <h1> by scholarship {{$var}} </h1>
	    @include('incs.scholarshipbuttons')
	    @include('incs.scholarshipforms')
	</div>
@endsection