@extends('layouts.app')

@section('content')


<!-- First Section -->

    <div class="jumbotron text-center" style="background-color:#00aae7;margin-bottom:0;">
        <div class="container">
            <h1 style="color:white; font-weight:bold">
                Comprehensive Application for Retrieving List of Scholarships
            </h1>
            <h2 style="color:white;">
                Developing a Real Opportunity for Your Acads
            </h2>
            <img src="{{ URL::to('/') }}/images/daroya.png" class="img-responsive img-circle margin" style="display:inline" alt="daroya" width="250" height="250">
            <h4 style="color:white;">
                Find scholarships that matches you with App_name
            </h4>
            <a href="/match" class="btn btn-primary" style="background-color:#f27749;">
                <h3>
                    Start matching now!
                </h3>
            </a>
        </div>
    </div>

<!-- Second Container -->
    <div class="jumbotron text-center" style="background-color:white; margin-bottom:0;">
        <h2>
            What Am I?
        </h2>
        <h3>
            Currently, App_name supports an abundant list of scholarships from universities in metro manila. Expect more partner schools in the future  
        </h3>
        <a href="/colleges" class="btn btn-default btn-lg" style="background-color:#00aae7; color:white;">
           <!-- <span class="glyphicon glyphicon-search"></span> See Current Universities -->
            <img src="{{ URL::to('/') }}/images/whiteglass.png" class="img-responsive" style="display:inline" alt="whiteglass" width="20" height="20"> 
                See Current Universities
        </a>
    </div>

<!-- Third Container -->
    <div class="jumbotron text-center" style="background-color:white; margin-bottom:0; ">
        <h2>
            See all the $$$ scholarships in our database.View them by category depending on your needs
        </h2>
        <a href="/scholarships" class="btn btn-default btn-lg" style="background-color:#00aae7; color:white">
            <!-- <span class="glyphicon glyphicon-search"></span> Browse scholarships -->
            <img src="{{ URL::to('/') }}/images/whiteglass.png" class="img-responsive" style="display:inline" alt="whiteglass" width="20" height="20"> 
                Browse Scholarships
        </a>
    </div>

<!-- Fourth Container -->
    <div class="jumbotron text-center" style="background-color:#157fc3; margin-bottom:0; color:white">
        <h2>
            Let app_name take care of finding scholarships that you qualify into
        </h2>
        <a href="/match" class="btn btn-default btn-lg" style="background-color:#f27749; color:white">
            <!-- <span class="glyphicon glyphicon-search"></span> Start matching -->
            <img src="{{ URL::to('/') }}/images/whiteglass.png" class="img-responsive" style="display:inline" alt="glass" width="20" height="20"> 
                Start Matching!
        </a>
    </div>

<!-- Footer -->
    <footer class="jumbotron text-center" style ="background-color:#4a4a4a; color:white">
        <p>Made by <a href="/about"> Me</a></p> 
        <p>See our partner  <a href="/companies"> companies</a></p> </br>
    </footer>

@endsection