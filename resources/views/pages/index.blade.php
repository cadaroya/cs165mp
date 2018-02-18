@extends('layouts.app')

@section('content')


<!-- First Section -->

    <div class="jumbotron text-center" style="background-color:#00aae7;margin-bottom:0;">
        <div class="container">
            <img src="{{ URL::to('/') }}/images/icon.png" class="img-responsive img-circle margin" style="border:5px solid white; display:inline;" alt="daroya" width="250" height="250">
            </br> </br> </br>
            <h4 style="font-family: 'Lato', sans-serif; font-size: 3em; color:white;">
                FIND SCHOLARSHIPS TO FINANCE YOUR EDUCATION
            </h4>
            <hr>
            <a href="/match" class="btn btn-primary" style="background-color:#f27749;">
                <h3 style="font-family: 'Oswald', sans-serif;">
                    Start matching now!
                </h3>
            </a>
        </div>
    </div>
<div class="container" >
    <div class="jumbotron text-center" style="background-color:white; margin-bottom:0">
        <h2 style="font-family: 'Lato', sans-serif; font-size: 2em;">
            SKO! IS THE SIMPLEST WAY TO CONNECT STUDENTS WITH SCHOLARSHIPS THEY QUALIFY TO. 
        </h2>
    </div>

    <hr>
<!-- Second Container -->
    <div class="jumbotron text-center" style="background-color:white; margin-bottom:0;">
        <h2 style="font-family: 'Lato', sans-serif; font-size: 2em;">
            A GROWING NETWORK OF PARTNER SCHOOLS.
        </h2>
        </br>
        <h4 style="font-family: 'Roboto', sans-serif; font-size: 1.5em;">
            SKO! supports an abundant list of scholarships from various universities in metro manila.
        </h4>
        <a href="/colleges" class="btn btn-default btn-lg" style="font-family: 'Oswald', sans-serif; background-color:#00aae7; color:white;">
           <!-- <span class="glyphicon glyphicon-search"></span> See Current Universities -->
            <img src="{{ URL::to('/') }}/images/whiteglass.png" class="img-responsive" style="display:inline" alt="whiteglass" width="20" height="20"> 
                See Current Universities
        </a>
    </div>
<hr>
<!-- Third Container -->
    <div class="jumbotron text-center" style="background-color:white; margin-bottom:0; ">
        <h2 style="font-family: 'Lato', sans-serif; font-size: 2em;">
            COMPREHENSIVE, UP-TO-DATE DATABASE OF SCHOLARSHIPS 
        </h2>
        </br>
        <h4 style="font-family: 'Roboto', sans-serif; font-size: 1.5em;">
           Discover our database of scholarships. View them by category depending on your preferences.
        </h4>
        <a href="/scholarships" class="btn btn-default btn-lg" style="font-family: 'Oswald', sans-serif; background-color:#00aae7; color:white">
            <!-- <span class="glyphicon glyphicon-search"></span> Browse scholarships -->
            <img src="{{ URL::to('/') }}/images/whiteglass.png" class="img-responsive" style="display:inline " alt="whiteglass" width="20" height="20"> 
                Browse Scholarships
        </a>
    </div>
<hr>
<!-- Fourth Container -->
    <div class="jumbotron text-center" style="background-color:#157fc3; margin-bottom:0; color:white">
        <h2 style="font-family: 'Lato', sans-serif; font-size: 2em;">
            Let SKO! match you with our scholarships.
        </h2>
        <a href="/match" class="btn btn-default btn-lg" style="background-color:#f27749; color:white">
            <!-- <span class="glyphicon glyphicon-search"></span> Start matching -->
            <img src="{{ URL::to('/') }}/images/whiteglass.png" class="img-responsive" style="display:inline" alt="glass" width="20" height="20"> 
                Start Matching!
        </a>
    </div>
</div>
<!-- Footer -->
    <footer class="jumbotron text-center" style ="background-color:#4a4a4a; color:white">
        <p>Made by <a href="/about"> Me</a></p> 
        <p>See our partner  <a href="/companies"> companies</a></p> </br>
    </footer>

@endsection