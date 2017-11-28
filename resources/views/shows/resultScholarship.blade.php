@extends('layouts.app')

@section('content')
    <h1> by Scholarship (Results) </h1>
    @include('incs.scholarshipbuttons')

    
    @if(count($results) > 0)
        @foreach($results as $result)
        <a href="/scholarships/{{$result->sid}}">
            <div class="container ">
                <div class="well">
                    <h3> {{$result->sname}} </h3>
                </div>
            </div>
        </a>
        @endforeach
    @else
        <div class="container ">
            <h3> Sorry no match </h3>
        </div>
    @endif
    </div>

@endsection