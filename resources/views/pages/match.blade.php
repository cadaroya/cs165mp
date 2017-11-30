@extends('layouts.app')

@section('content')
    <h1 class="text-center"> Fill up the form </h1>

    {!! Form::open(['action' => 'MatchController@store', 'method', 'POST']) !!}
        <div class="container">
            <div class="form-group">
                {{Form::label('sex', 'Sex')}}</br>
                {{Form::select('sex', ['male' => 'Male', 'female' => 'Female'], null, ['placeholder' => 'Choose ...'])}} </br>
               
                {{Form::label('age', 'Age')}}
                {{Form::text('age', '', ['class' => 'form-control', 'placeholder' => 'Enter'])}}

                {{Form::label('year', 'School Year')}}
                {{Form::text('year', '', ['class' => 'form-control', 'placeholder' => 'Enter'])}}

                {{Form::label('semester', 'Semester')}}</br>
                {{Form::select('semester', [1 => '1', 2 => '2'], null, ['placeholder' => 'Choose ...'])}} </br>

                {{Form::label('level', 'Year Level/ Standing')}}</br>
                {{Form::select('level', ['freshman' => 'Freshman', 'sophomore' => 'Sophomore', 'junior' => 'Junior', 'senior' => 'Senior'], null, ['placeholder' => 'Choose ...'])}} </br>

                {{Form::label('GWA', 'General Weighted Average (GWA)')}}
                {{Form::text('GWA', '', ['class' => 'form-control', 'placeholder' => 'Enter'])}}

                {{Form::label('maxgrade', 'Lowest Grade (in all subjects for this year)')}}
                {{Form::text('maxgrade', '', ['class' => 'form-control', 'placeholder' => 'Enter'])}}

                {{Form::label('course', 'Program/Course')}}</br>
                {{Form::select('course', $course_dropdown , null, ['placeholder' => 'Choose course...'])}} </br>

                {{Form::label('university', 'University/College')}}</br>
                {{Form::select('university', $college_dropdown , null, ['placeholder' => 'Choose college...'])}} </br>
            </div>

            {{Form::submit('Submit', ['class' => 'btn btn-default'])}}
        </div>
    {!! Form::close() !!}

    
@endsection



