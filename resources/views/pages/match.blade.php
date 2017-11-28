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

                {{Form::label('field', 'Field of Study')}}
                {{Form::text('field', '', ['class' => 'form-control', 'placeholder' => 'Enter'])}}

                {{Form::label('course', 'Program/Course')}}
                {{Form::text('course', '', ['class' => 'form-control', 'placeholder' => 'Enter'])}}

                {{Form::label('university', 'University/College')}}
                {{Form::text('university', '', ['class' => 'form-control', 'placeholder' => 'Enter'])}}

                <!-- Drop down -->
                {{Form::label('sample1', 'sample1')}}
                {{Form::select('animal', [
                    'Cats' => ['leopard' => 'Leopard'],
                    'Dogs' => ['spaniel' => 'Spaniel'],
                ])}}

                {{Form::label('sample3', 'sample3')}}
                {{Form::select('size', ['L' => 'Large', 'S' => 'Small'], null, ['placeholder' => 'Pick a size...'])}}
            </div>

            {{Form::submit('Submit', ['class' => 'btn btn-default'])}}
        </div>
    {!! Form::close() !!}

    
@endsection



