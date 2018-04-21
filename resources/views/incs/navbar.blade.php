<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid" >
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#app-navbar-collapse">
                <span class="sr-only">Toggle Navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="/"><img src="{{ URL::to('/') }}/images/nav-brand.png" class="margin" style="display:inline;" alt="navbrand" height="30"></a>
        </div>
        <div class="collapse navbar-collapse" id="app-navbar-collapse">
            <ul class="nav navbar-nav">
              <li ><a href="/">HOME</a></li>
              <li ><a href="/scholarships/byName">SCHOLARSHIPS</a></li>
              <li ><a href="/colleges/byName">COLLEGES</a></li>
              <li ><a href="/about">ABOUT</a></li>
            </ul>
        </div>
    </div>
</nav>