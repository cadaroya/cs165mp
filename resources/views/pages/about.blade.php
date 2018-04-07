@extends('layouts.app')

@section('content')
    <div class="container">
        <h1>  ABOUT SKO!</h1>
        <div class="jumbotron text-center panel" style="background-color:#F5F5F5">
            <h2 style="font-family: 'Lato', sans-serif;">
                SKO!'S MISSION
            </h2>
            <h3 style="text-align: justify;font-family: 'Roboto', sans-serif;">
               SKO! genuinely aims to help students in their financial endeavors. We built this pillar of information
               to enlighten everyone, not just students, about the abundance of available scholarships. We provide you with this service
               without strings attached. We only want to make it easier for you to get the scholarship you've always deserved.
           </h3>
            <br>


            <hr>
            <h2 style="font-family: 'Lato', sans-serif;">
                The Team says "Hi!"
            </h2>
            <h3 style="text-align: justify; font-family: 'Roboto', sans-serif;">
               Hi! Although several people helped in completing this project, we are mainly a team of 5 students based on UP Diliman. If you have any questions, problems, or concerns feel free to email any of us.
                (<a href="mailto:daroyac@gmail.com">Carlos</a>, <a href="mailto:ajsanjoaquin@gmail.com">AJ</a>, <a href="mailto:jadcreyes23@gmail.com ">Jullie</a>, <a href="mailto:julessegismundo@gmail.com ">Jules</a>, <a href="mailto:simonclemente113@gmail.com">Simon</a>)
           
            </h3>

            <br>

        </div>
    </div>

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
@endsection