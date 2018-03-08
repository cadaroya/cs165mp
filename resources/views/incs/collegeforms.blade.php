    
    {!! Form::open(['action' => 'UniversityController@store', 'method', 'POST']) !!}

    {{ Form::hidden('var', $var) }}

    <div class="well">
    @if(strcmp($var, "Name") == 0)
        {{Form::label('name', 'Name')}}</br>
        {{Form::text('name', '', ['class' => 'form-control', 'placeholder' => 'Enter name of University'])}}
    @elseif(strcmp($var, "Region") == 0)
        {{Form::label('region', 'Region')}}</br>
        {{Form::select('region', $dropdown , null, ['class' => 'form-control', 'placeholder' => 'Choose Region...'])}}
    @elseif(strcmp($var, "Province") == 0)
        {{Form::label('province', 'Province')}}</br>
        {{Form::select('province', $dropdown, null, ['class' => 'form-control', 'placeholder' => 'Choose Province...'])}}
    @else
        {{Form::label('city', 'City')}}</br>
        {{Form::select('city', $dropdown, null, ['class' => 'form-control', 'placeholder' => 'Choose City...'])}}
    @endif

    {{Form::submit('Submit', ['class' => 'btn btn-default', 'style' => 'background-color:#00aae7; color: white;'])}}
    </div>
    {!! Form::close() !!}
    