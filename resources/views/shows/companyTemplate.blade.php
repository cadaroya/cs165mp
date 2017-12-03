@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="well">

            
                <h1> {{$company->name}} </h1>
                <h4> {{$company->address}} <h4>

                <p> Additional stuff you would like to add </p> </br>
                
                <a href="#"> <p> Link to their website! </p></a>
                <a href="/companies/{{$company->cid}}/edit"> <p> Edit data </p></a>
                {!!Form::open(['action' => ['CompanyController@destroy', $company->cid], 'method' => 'POST', 'class' => 'pull-right'])!!}
                    {{Form::hidden('_method', 'DELETE')}}
                    {{Form::submit('Delete', ['class' => 'btn btn-danger'])}}
                {!!Form::close()!!}
            
        </div>
    </div>
@endsection