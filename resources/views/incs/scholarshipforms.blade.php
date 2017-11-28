    <div class="container">
    {!! Form::open(['action' => 'ScholarshipsController@store', 'method', 'POST']) !!}

    {{ Form::hidden('var', $var) }}

    @if(strcmp($var, "Name") == 0)
        {{Form::label('name', 'Name')}}
        {{Form::text('name', '', ['class' => 'form-control', 'placeholder' => 'Enter name of Scholarship'])}}

    @elseif(strcmp($var, "College") == 0)
        {{Form::label('college', 'University/College')}}</br>
        {{Form::select('college', $dropdown , null, ['placeholder' => 'Choose University/College...'])}} </br>
    @elseif(strcmp($var, "Program") == 0)
        {{Form::label('program', 'Program')}}</br>
        {{Form::select('program', $dropdown, null, ['placeholder' => 'Choose Program...'])}} </br>
    @else
        {{Form::label('level', 'Level')}}</br>
        {{Form::select('level', $dropdown, null, ['placeholder' => 'Choose Level...'])}} </br>
    @endif

    {{Form::submit('Submit', ['class' => 'btn btn-default'])}}
    {!! Form::close() !!}
    </div>