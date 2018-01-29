<!doctype html>
<html lang="{{ app()->getLocale() }}">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="{{asset('css/app.css')}}">
        <link href="https://fonts.googleapis.com/css?family=Scada" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Roboto:100" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Lato:300" rel="stylesheet">
        <style>
        .navbar{
            margin-bottom:0;
            border-radius:0;
        }
        </style>
   

        <title>SKO! Find Matching Scholarships</title>
    </head>
        @include('incs.navbar')
    <body style="font-family: 'Lato', sans-serif; background:white;" >
        
        @include('incs.formwarnings')
        @yield('content')
        
    </body>

</html>
