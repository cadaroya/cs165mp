    <!-- <div class="container"> -->
    {!! Form::open(['action' => 'ScholarshipsController@store', 'method', 'POST']) !!}

    {{ Form::hidden('var', $var) }}

    <div class="well">
    @if(strcmp($var, "Name") == 0)
        {{Form::label('name', 'Name')}}</br>
        {{Form::text('name', '', ['class' => 'form-control', 'placeholder' => 'Enter name of Scholarship'])}}</br>

    @elseif(strcmp($var, "College") == 0)
        {{Form::label('college', 'University/College')}}</br>
        {{Form::select('college', $dropdown , null, ['class' => 'form-control', 'placeholder' => 'Choose University/College...'])}} </br>
    @elseif(strcmp($var, "Program") == 0)
        {{Form::label('program', 'Program')}}</br>
        {{Form::select('program', $dropdown, null, ['class' => 'form-control', 'placeholder' => 'Choose Program...'])}} </br>
    @else
        {{Form::label('level', 'Level')}}</br>
        {{Form::select('level', $dropdown, null, ['class' => 'form-control', 'placeholder' => 'Choose Level...'])}} </br>
    @endif

    {{Form::submit('Search', ['class' => 'btn btn-default', 'style' => 'background-color:#00aae7; color: white;'])}}
    </div>
    {!! Form::close() !!}
    <!-- </div> -->