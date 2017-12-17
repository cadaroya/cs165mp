@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="panel panel-default">
  

            {{$item = NULL}}
            @foreach($scholarship as $s)
                <div class="panel-heading" style="text-weight:bold;background-color:#00aae7;color:white"><h1>{{$s->sname}}</h1> </div>
                    <div class="panel-body">
                        <h4> {{$s->year}} <h4>
                        @if($s->uname != NULL)
                            <h4> {{$s->uname}} </h4>
                        @else 
                            <h4> Any University/College </h4>
                        @endif

                        @if($s->level != NULL)
                            <h4> For {{$s->level}} standing </h4>
                        @else
                            <h4> For any standing </h4>
                        @endif
                        
                        <h4> ₱{{$s->stipend}}.00/{{$s->type}} </h4>
                        <p> {{$s->description}} </p> </br>

                        @if($s->url == NULL)
                            <p> Website link is currently unavailable </p>
                        @else
                            <a href="{{$s->url}}"> <p> Link to their website! </p></a>
                        @endif
                        <a href="/scholarships/{{$s->sid}}/edit"> <p> Edit data </p></a>
                
                {!!Form::open(['action' => ['ScholarshipsController@destroy', $s->sid], 'method' => 'POST', 'class' => 'pull-right'])!!}
                    {{Form::hidden('_method', 'DELETE')}}
                    {{Form::submit('Delete', ['class' => 'btn btn-danger'])}}
                {!!Form::close()!!}
                
                </div>
            @endforeach
        </div>
    </div>
@endsection