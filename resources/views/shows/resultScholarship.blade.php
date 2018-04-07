@extends('layouts.app')

@section('content')
    <div class="container">
        <h1> Scholarship (Results) </h1>
        @include('incs.scholarshipbuttons')
        @if(count($results) > 0)
            <div class="list-group">
            @foreach($results as $result)
                <a href="/scholarships/{{$result->sid}}" class="list-group-item">
                    <h4> {{$result->sname}} </h4>               
                </a>
            @endforeach
            </div>
        @else
            <div class="container ">
                <h3> Sorry no match </h3>
            </div>
        @endif
    </div>

@endsection