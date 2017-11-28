    <div class="container">
    {!! Form::open(['action' => 'UniversityController@store', 'method', 'POST']) !!}
    @if(strcmp($var, "Name") == 0)
        {{Form::label('name', 'Name')}}
        {{Form::text('name', '', ['class' => 'form-control', 'placeholder' => 'Enter name of University'])}}

    @elseif(strcmp($var, "Region") == 0)
        {{Form::label('region', 'Region')}}</br>
        {{Form::select('region', ['NCR' => 'NCR'], null, ['placeholder' => 'Choose Region...'])}} </br>
    @elseif(strcmp($var, "Province") == 0)
        {{Form::label('province', 'Province')}}</br>
        {{Form::select('province', ['Metro Manila' => 'Metro Manila'], null, ['placeholder' => 'Choose Province...'])}} </br>
    @else
        {{Form::label('city', 'City')}}</br>
        {{Form::select('city', ['Quezon City' => 'Quezon City', 'Manila' => 'Manila' ], null, ['placeholder' => 'Choose City...'])}} </br>
    @endif

    {{Form::submit('Submit', ['class' => 'btn btn-default'])}}
    {!! Form::close() !!}
    </div>