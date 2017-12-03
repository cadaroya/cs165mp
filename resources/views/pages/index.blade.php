@extends('layouts.app')

@section('content')


<!-- First Section -->

    <div class="jumbotron text-center" style="margin-bottom:0;">
        <div class="container">
            <h1>Scholarship App</h1>
            <img src="{{ URL::to('/') }}/images/bird.jpg" class="img-responsive img-circle margin" style="display:inline" alt="Bird" width="350" height="350">
            <h3>Find scholarships that matches you with app_name</h3>
            <a href="/match" class="btn btn-primary"><h3>Start matching now!</h3></a>
        </div>
    </div>

<!-- Second Container -->
    <div class="jumbotron text-center" style="background-color:powderblue; margin-bottom:0;">
        <h2>What Am I?</h2>
        <h3> Currently, App_name supports an abundant list of scholarships from universities in metro manila. Expect more partner schools in the future  </h3>
        <a href="/colleges" class="btn btn-default btn-lg">
            <span class="glyphicon glyphicon-search"></span> See Current Universities
        </a>
    </div>

<!-- Third Container -->
    <div class="jumbotron text-center" style="background-color:Springgreen; margin-bottom:0;">
        <h2>See all the $$$ scholarships in our database.View them by category depending on your needs</h2>
        <a href="/scholarships" class="btn btn-default btn-lg">
            <span class="glyphicon glyphicon-search"></span> Browse scholarships
        </a>
    </div>

<!-- Fourth Container -->
    <div class="jumbotron text-center" style="background-color:Lightyellow; margin-bottom:0;">
        <h2>-	Let app_name take care of finding scholarships that you qualify into</h2>
        <a href="/match" class="btn btn-default btn-lg">
            <span class="glyphicon glyphicon-search"></span> Start matching 
        </a>
    </div>

<!-- Footer -->
    <footer class="jumbotron text-center" style ="background-color:gray;">
        <p>Made by <a href="/about"> Me</a></p> </br>
        <p>See our partner  <a href="/companies"> companies</a></p> </br>
    </footer>

@endsection