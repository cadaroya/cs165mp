@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="panel panel-default">

            @foreach($university as $s)
            <div class="panel-heading" style="text-weight:bold;background-color:#00aae7;color:white"> <h1> {{$s->uname}} </h1></div>
            <div class="panel-body">
                <h4> {{$s->region}} <h4>
                <h4> {{$s->province}} </h4>
                <h4> {{$s->city}} </h4>
                <p> Additional stuff you would like to add </p>
                </br>
                <a href="#"> <p> Link to their website! </p></a> 
                <a href="/colleges/{{$s->uid}}/edit"> <p> Edit data </p></a>
                {!!Form::open(['action' => ['UniversityController@destroy', $s->uid], 'method' => 'POST', 'class' => 'pull-right'])!!}
                    {{Form::hidden('_method', 'DELETE')}}
                    {{Form::submit('Delete', ['class' => 'btn btn-danger'])}}
                {!!Form::close()!!}
            @endforeach
            </div>
        </div>
    </div>
@endsection