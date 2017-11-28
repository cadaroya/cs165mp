@extends('layouts.app')

@section('content')
    <h1> by College (Results) </h1>
    @include('incs.collegebuttons')

    @if(count($results) > 0)
        @foreach($results as $result)
            <div class="container">
                <h3> {{$result->uname}} </h3>
            </div>
        @endforeach
    @else
        <h3> Sorry no match </h3>
    @endif

@endsection