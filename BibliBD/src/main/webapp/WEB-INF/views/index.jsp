<!DOCTYPE html>
<html lang="fr">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Advanced Web Project">
    <meta name="author" content="EmeraldEnterprise">
    <link rel="shortcut icon" href="../../resources/bootstrap/docs/assets/ico/favicon.png">
    
    <title>Ma BibliBD</title>

    <!-- Bootstrap core CSS -->
    <link href="../../resources/bootstrap/dist/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../../resources/css/bd.css" rel="stylesheet">
  </head>

  <body>

<<<<<<< HEAD
        <!-- Header -->
        <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
          <div class="container">
            <div class="navbar-header">
              <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
              <a class="navbar-brand" href="/bd/"> Ma BibliBD</a>
            </div>
            <div class="collapse navbar-collapse">
              <ul class="nav navbar-nav">
                <li><a href="/bd/index"><span class="glyphicon glyphicon-home"></span> Accueil</a></li>
                <li><a href="/bd/"> Ma BDthèque</a></li>
                <li><a href="newBd"><span class="glyphicon glyphicon-plus-sign"></span> Ajouter une nouvelle BD</a></li>
                <li>          
                  <form class="navbar-form">
                    <input type="text" style="width:150px" class="input-sm form-control" placeholder="rechercher">
                    <button type="submit" class="btn btn-primary btn-sm"><span class="glyphicon glyphicon-search"></span></button>
                  </form>
                </li>
              </ul>
            </div>
          </div>
        </div>
        <!-- /Header -->
=======
    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="list">Ma BibliBD</a>
        </div>
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li><a href="/BibliBD/"><span class="glyphicon glyphicon-home"></span>Accueil</a></li>
            <li><a href="list">Ma BDth�que</a></li>
            <li class="active"><a href="newBd"><span class="glyphicon glyphicon-plus-sign"></span>Ajouter une nouvelle BD</a></li>
            <li>          
              <form class="navbar-form">
                <input type="text" style="width:150px" class="input-sm form-control" placeholder="rechercher">
                <button type="submit" class="btn btn-primary btn-sm"><span class="glyphicon glyphicon-search"></span></button>
              </form>
            </li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>

    <div class="container">
      <div class="starter-template">
        ${bdtheque}
      </div>
    </div><!-- /.container -->
>>>>>>> origin/master

        <!-- Main -->
        <div class="main" id="accueil">  
        </div>
        <!-- /Main -->

        <!-- Footer -->
        <footer class="footer navbar-fixed-bottom" role="footer">
          <div class="container">
              <p>© 2014 Emerald Enterprise</p>
          </div>
        </footer>
        <!-- /Footer -->


        <!-- Bootstrap core JavaScript -->
        <script src="../../resources/bootstrap/dist/js/jquery-1.11.1.min.js"></script>
        <script src="../../resources/bootstrap/dist/js/bootstrap.min.js"></script>
    </body>
</html>