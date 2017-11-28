@extends('layouts.app')

@section('content')
    <h1> Scholarships </h1>
    @if(count($scholarship) > 0)
        @foreach($scholarship as $s)
            <div class="well">
                <h3>{{$s->sname}}</h3>
            </div>
        @endforeach
    @else
        <h3> No scholarships found </h3>
    @endif
@endsection