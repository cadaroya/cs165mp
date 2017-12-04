@extends('layouts.app')

@section('content')
    <div class="container">
        <h1> Create College</h1><br>
        {!! Form::open(['action' => 'UniversityController@insert', 'method', 'POST']) !!}
            <div class="container">
                <div class="row">
                    <div class="input-group">
                        <span class="input-group-addon">Name</span>
                        <input type="text" class="form-control" placeholder="Enter name of college" name="univ_name" autofocus="" maxlength="200" id="univ_name">
                    </div>
                </div><br>
                <div class="row">
                    <div class="input-group">
                        <span class="input-group-addon">Location</span>
                        <select class="form-control" id="loc_id" name="loc_id">
                            @foreach($location as $loc)
                                <option value="{{$loc->location_id}}">{{$loc->city}}, {{$loc->region}}, {{$loc->country}}</option>
                            @endforeach
                        </select>
                    </div>
                </div><br>
                <div class="row">
                    {{Form::submit('Submit', ['class' => 'btn btn-default'])}}
                </div>
            </div>
        {!! Form::close() !!}
    </div>

@endsection