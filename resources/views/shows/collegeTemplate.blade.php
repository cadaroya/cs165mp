@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="well">

            @foreach($university as $s)
                <h1> {{$s->uname}} </h1>
                <h4> {{$s->region}} <h4>
                <h4> {{$s->province}} </h4>
                <h4> {{$s->city}} </h4>
            @endforeach

            <p> Additional stuff you would like to add </p>
            </br>
            <a href="#"> <p> Link to their website! </p></a>

        </div>
    </div>
@endsection