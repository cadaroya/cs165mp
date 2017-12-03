@extends('layouts.app')

@section('content')
    <h1 style="margin-left:110px"> Scholarships </h1>
    @include('incs.scholarshipbuttons')
    <div class="well">
        <a href="/scholarships/create" class="btn btn-primary"> Add scholarship </a>

    </div>
@endsection