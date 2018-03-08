@extends('layouts.app')

@section('content')
	<div class="container">
	    <h1> by scholarship {{$var}} </h1>
		<br>
	    @include('incs.scholarshipbuttons')
		<br>
	    @include('incs.scholarshipforms')
	</div>
@endsection