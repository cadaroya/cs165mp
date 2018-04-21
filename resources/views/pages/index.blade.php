@extends('layouts.app')

@section('content')


<!-- First Section -->

    <div class="text-center" style="background-color:#00aae7; display:flex; align-items:center; padding:5vh">
        <div class="container text-center">
            <img src="{{ URL::to('/') }}/images/icon.png" class="img-responsive img-circle center-block" style="border:5px solid white;" alt="daroya" width="250">
            </br>
            <h1 style="font-family: 'Lato', sans-serif; color:white;">
                FIND SCHOLARSHIPS TO FINANCE YOUR EDUCATION.
            </h1>
            <br>
            <a href="/match" class="btn btn-lg btn-primary" style="background-color:#f27749; border-color:white;">
                <h3 style="font-family: 'Lato', sans-serif; font-weight:bold;">
                    Start matching now!
                </h3>
            </a>
        </div>
    </div>
    <div class="container">
        <div class="text-center">
            <br>
            <h2 style="font-family: 'Roboto', sans-serif;">
                <b>SKO!</b> is the simplest way to connect students with scholarships they qualify to.
            </h2>
            <br>
        </div>

    <!-- Second Container -->
        <div class="jumbotron text-center panel" style="background-color:#F5F5F5">
            <h2 style="font-family: 'Lato', sans-serif;">
                A GROWING NETWORK OF PARTNER SCHOOLS.
            </h2>
            <h3 style="font-family: 'Roboto', sans-serif;">
                SKO! supports an abundant list of scholarships from various universities in Metro Manila.
            </h3>
            <br>
            <a href="/colleges/byName" class="btn btn-default btn-lg" style="font-family: 'Lato', sans-serif; font-weight:bold; background-color:#f27749; color:white;">
               <!-- <span class="glyphicon glyphicon-search"></span> See Current Universities -->
                <img src="{{ URL::to('/') }}/images/whiteglass.png" class="img-responsive" style="display:inline" alt="whiteglass" width="20" height="20"> 
                    See Current Universities
            </a>
        </div>
    <!-- Third Container -->
        <div class="jumbotron text-center panel" style="background-color:#F5F5F5">
            <h2 style="font-family: 'Lato', sans-serif;">
                COMPREHENSIVE, UP-TO-DATE SCHOLARSHIP DATABASE.
            </h2>
            <h3 style="font-family: 'Roboto', sans-serif;">
               Discover our database of scholarships. View them by category depending on your preferences.
           </h3>
            <br>
            <a href="/scholarships/byName" class="btn btn-default btn-lg" style="font-family: 'Lato', sans-serif; font-weight:bold; background-color:#f27749; color:white">
                <!-- <span class="glyphicon glyphicon-search"></span> Browse scholarships -->
                <img src="{{ URL::to('/') }}/images/whiteglass.png" class="img-responsive" style="display:inline " alt="whiteglass" width="20" height="20"> 
                    Browse Scholarships
            </a>
        </div>
        </br>
    </div>
    </br>
    <!-- Fourth Container -->
    <div class="jumbotron text-center" style="background-color:#157fc3; margin-bottom:0; color:white; width:100%;">
        <div class="container">
            <h2 style="font-family: 'Lato', sans-serif;">
                Let <b>SKO!</b> match you with our scholarships.
            </h2>
            <br>
            <a href="/match" class="btn btn-default btn-lg" style="font-family: 'Lato', sans-serif; font-weight:bold; background-color:#f27749; color:white">
                <!-- <span class="glyphicon glyphicon-search"></span> Start matching -->
                <img src="{{ URL::to('/') }}/images/whiteglass.png" class="img-responsive" style="display:inline" alt="glass" width="20" height="20"> 
                    Start Matching!
            </a>

            
        </div>
    </div>
<!-- Footer -->
    <footer class="panel text-center" style="margin-bottom:0;  border:0;">
        <div class="panel-footer" style ="background-color:#404040; border:0; color:white;">
            <p>Made by <a href="/about">a team of UP students</a> © 2018</p>
            <p style="color: #edeaec; font-size: 1em;"> Disclaimer: The scholarship list serves only as an aggregator from multiple online sources some of which may have been modified or removed without prior notice </p>
        </div>
    </footer>

@endsection