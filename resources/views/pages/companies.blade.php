@extends('layouts.app')

@section('content')
    <h1> Companies </h1>
    <div class="well">
        <a href="/companies/create" class="btn btn-primary"> Add Company </a>

    </div>
    @if(count($company) > 0)
        @foreach($company as $c)
        <a href="/companies/{{$c->cid}}">
            <div class="container ">
                <div class="well">
                    <h3> {{$c->name}} </h3>
                </div>
            </div>
        </a>
        @endforeach
    @else
        <div class="container ">
            <h3> Currently no partner companies </h3>
        </div>
    @endif
    </div>
@endsection