@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="panel panel-default">

            <div class="panel-heading" style="text-weight:bold;background-color:#00aae7;color:white">
                <h1> {{$company->name}} </h1>
            </div>
            <div class="panel-body">
                <h4> {{$company->address}} <h4>

                <p> Additional stuff you would like to add </p> </br>
                
                <a href="#"> <p> Link to their website! </p></a>
                <a href="/companies/{{$company->cid}}/edit"> <p> Edit data </p></a>
                <!-- Delete
                {!!Form::open(['action' => ['CompanyController@destroy', $company->cid], 'method' => 'POST', 'class' => 'pull-right'])!!}
                    {{Form::hidden('_method', 'DELETE')}}
                    {{Form::submit('Delete', ['class' => 'btn btn-danger'])}}
                {!!Form::close()!!}
                -->
            </div>
        </div>
    </div>
@endsection