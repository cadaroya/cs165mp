@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="well">
            {{$item = NULL}}
            @foreach($scholarship as $s)
                <h1> {{$s->sname}} </h1>
                <h4> {{$s->year}} <h4>
                <h4> {{$s->uname}} </h4>
                <h4> {{$s->level}} </h4>
                <p> Additional stuff you would like to add </p> </br>
                
                <a href="#"> <p> Link to their website! </p></a>
                <a href="/scholarships/{{$s->sid}}/edit"> <p> Edit data </p></a>
                
                {!!Form::open(['action' => ['ScholarshipsController@destroy', $s->sid], 'method' => 'POST', 'class' => 'pull-right'])!!}
                    {{Form::hidden('_method', 'DELETE')}}
                    {{Form::submit('Delete', ['class' => 'btn btn-danger'])}}
                {!!Form::close()!!}
            @endforeach
        </div>
    </div>
@endsection