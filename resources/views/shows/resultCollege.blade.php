@extends('layouts.app')

@section('content')
    <div class="container">
    <h1> by College (Results) </h1>
    @include('incs.collegebuttons')

    
    @if(count($results) > 0)
        <div class="list-group">
        @foreach($results as $result)
            <a href="colleges/{{$result->uid}}" class="list-group-item">
            <!-- <div class="container">
                <div class="well"> -->
                <h4> {{$result->uname}} </h4>
                <!-- </div> -->
            </a>
        @endforeach
        </div>
    @else
        <div class="container">
            <h3> Sorry no match </h3>
        </div>
    @endif
    </div>

@endsection