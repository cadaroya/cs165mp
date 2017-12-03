@extends('layouts.app')

@section('content')
    <h1> Add Company Information </h1>
    {!! Form::open(['action' => 'CompanyController@store', 'method', 'POST']) !!}
    
        <div class="container">
            <div class="form-group">

                {{Form::label('name', 'Name of Company')}}
                {{Form::text('name', '', ['class' => 'form-control', 'placeholder' => 'Enter name of Company'])}}

                {{Form::label('address', 'Address')}}</br>
                {{Form::select('address', $dropdown, null, ['placeholder' => 'Choose City...'])}} </br>

            </div>
            
            {{Form::submit('Submit', ['class' => 'btn btn-default'])}}
        </div>
    {!! Form::close() !!}
@endsection