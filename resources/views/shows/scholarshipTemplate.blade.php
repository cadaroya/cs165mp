@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="well">

            @foreach($scholarship as $s)
                <h1> {{$s->sname}} </h1>
                <h4> {{$s->year}} <h4>
                <h4> {{$s->uname}} </h4>
                <h4> {{$s->level}} </h4>
            @endforeach

            <p> Additional stuff you would like to add </p>
            </br>
            <a href="#"> <p> Link to their website! </p></a>

        </div>
    </div>
@endsection