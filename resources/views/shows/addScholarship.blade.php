@extends('layouts.app')

@section('content')
    <h1> Add Scholarship </h1>
    {!! Form::open(['action' => 'ScholarshipsController@insert', 'method', 'POST']) !!}
        
        <div class="container">
            <div class="form-group">
              
                {{Form::label('sname', 'Name of Scholarship')}}
                {{Form::text('sname', '', ['class' => 'form-control', 'placeholder' => 'Enter name of Scholarship'])}}

                {{Form::label('sex', 'Sex')}}</br>
                {{Form::select('sex', ['male' => 'Male', 'female' => 'Female', NULL => 'ANY'], null, ['placeholder' => 'Choose ...'])}} </br>
               
                {{Form::label('age', 'Max Age Requirement')}}</br>
                {{Form::select('age', array(NULL => 'ANY') + array_combine(range(1,100),range(1,100)), null, ['placeholder' => 'Choose ...'])}} </br>

                {{Form::label('year', 'School Year')}}</br>
                {{Form::select('year', array(NULL => 'ANY') + array_combine(range(2000,2017),range(2000,2017)), null, ['placeholder' => 'Choose ...'])}} </br>

                {{Form::label('semester', 'Semester')}}</br>
                {{Form::select('semester', [1 => '1', 2 => '2', NULL => 'ANY'], null, ['placeholder' => 'Choose ...'])}} </br>

                {{Form::label('level', 'Year Level/ Standing')}}</br>
                {{Form::select('level', ['freshman' => 'Freshman', 'sophomore' => 'Sophomore', 'junior' => 'Junior', 'senior' => 'Senior', NULL => 'ANY'], null, ['placeholder' => 'Choose ...'])}} </br>

                {{Form::label('GWA', 'General Weighted Average (GWA)')}}</br>
                {{Form::select('GWA',[100 => '1.00', 125 => '1.25', 150 => '1.50', 175 => '1.75', 200 => '2.00', 225 => '2.25', 250 => '2.50', 275 => '2.75', 300 => '3.00', 400 => '4.00', 500 => '5.00', NULL => 'ANY'] , null, ['placeholder' => 'Choose ...'])}} </br>

                {{Form::label('maxgrade', 'Lowest Grade (in all subjects for this year)')}}</br>
                {{Form::select('maxgrade', [100 => '1.00', 125 => '1.25', 150 => '1.50', 175 => '1.75', 200 => '2.00', 225 => '2.25', 250 => '2.50', 275 => '2.75', 300 => '3.00', 400 => '4.00', 500 => '5.00', NULL => 'ANY'], null, ['placeholder' => 'Choose ...'])}} </br>
            </div>
            
            {{Form::submit('Submit', ['class' => 'btn btn-default'])}}
        </div>
    {!! Form::close() !!}
@endsection