@extends('layouts.app')

@section('content')
    <h1> by scholarship {{$var}} </h1>
    @include('incs.scholarshipbuttons')
    @include('incs.scholarshipforms')
@endsection