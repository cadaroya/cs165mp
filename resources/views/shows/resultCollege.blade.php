@extends('layouts.app')

@section('content')
    <h1> by College (Results) </h1>
    @include('incs.collegebuttons')

    
    @if(count($results) > 0)
        @foreach($results as $result)
        <a href="colleges/{{$result->uid}}">
            <div class="container">
                <div class="well">
                    <h3> {{$result->uname}} </h3>
                </div>
            </div>
        </a>
        @endforeach
    @else
        <div class="container">
            <h3> Sorry no match </h3>
        </div>
    @endif

@endsection