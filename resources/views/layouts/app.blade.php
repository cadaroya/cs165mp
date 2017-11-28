<!doctype html>
<html lang="{{ app()->getLocale() }}">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="{{asset('css/app.css')}}">
        
        <style>
        .navbar{
            margin-bottom:0;
            border-radius:0;
        }
        </style>
   

        <title>{{config('app.name','Scholarship App')}}</title>
    </head>
    <body>
        @include('incs.navbar')
        @include('incs.formwarnings')
        @yield('content')
        
    </body>

</html>
