@extends('layouts.app')

@section('content')
    <h1> Edit Company Information </h1>
    {!! Form::open(['action' => ['CompanyController@update', $company->cid], 'method', 'POST']) !!}
        <div class="container">
            <div class="form-group">

                {{Form::label('name', 'Name of Company')}}
                {{Form::text('name', $company->name, ['class' => 'form-control', 'placeholder' => 'Enter name of Scholarship'])}}

                {{Form::label('address', 'Address')}}</br>
                {{Form::select('address', $dropdown, null, ['placeholder' => 'Choose City...'])}} </br>

            </div>
            {{Form::hidden('_method', 'PUT')}}
            {{Form::submit('Submit', ['class' => 'btn btn-default'])}}
        </div>
    {!! Form::close() !!}
@endsection