@extends('layouts.app')

@section('content')
    <div class="container">
    <h1 style> Results </h1>
    @if(count($results) > 0)
        @foreach($results as $result)
            <div class="container">
                <h3> {{$result->sname}} </h3>
            </div>
        @endforeach
    @else
        <h3> Sorry no match </h3>
    @endif
    </div>
@endsection