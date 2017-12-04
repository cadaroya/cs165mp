@extends('layouts.app')

@section('content')
    <div class="container">
        <h1> Companies </h1>
        <div class="well">
            <a href="/companies/create" class="btn btn-primary"> Add Company </a>

        </div>
        @if(count($company) > 0)
            <div class="list-group">
            @foreach($company as $c)
            <a href="/companies/{{$c->cid}}" class="list-group-item">
                <div class="container ">
                    <h4> {{$c->name}} </h4>
                </div>
            </a>
            @endforeach
            </div>
        @else
            <div class="container ">
                <h3> Currently no partner companies </h3>
            </div>
        @endif
        </div>
    </div>
@endsection