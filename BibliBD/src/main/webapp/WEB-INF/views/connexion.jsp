<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Advanced Web Project">
    <meta name="author" content="EmeraldEnterprise">
    <link rel="shortcut icon" href="resources/bootstrap/docs/assets/ico/favicon.png">
    
    <title>Ma BibliBD</title>

    <!-- Bootstrap core CSS -->
    <link href="resources/bootstrap/dist/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="resources/css/bd.css" rel="stylesheet">
  </head>

  <body>

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
              <a class="navbar-brand" href="list">Ma BibliBD</a>
            </div>
            <div class="collapse navbar-collapse">
              <ul class="nav navbar-nav">
                <li><a href="/BibliBD/"><span class="glyphicon glyphicon-home"></span>Accueil</a></li>
                <li><a href="list">Ma BDthèque</a></li>
                <li><a href="newBd"><span class="glyphicon glyphicon-plus-sign"></span>Ajouter une nouvelle BD</a></li>
              </ul>
            </div>
          </div>
        </div>
        <!-- /Header -->

        <!-- Main -->
        <div class="main" id="connection">
            <div class="container">
                <div class="row">
                    <div class="col-sm-4"></div>
                    <div class="col-sm-4"><h1>Connexion</h1></div>
                    <div class="col-sm-4"></div>
                </div>
                <hr>
                <div class="row">
                    <section class="col-md-4 hidden-sm hidden-xs" id="inscriptionLink">
                        <div class="col-md-4">                            
                            <div class="row hidden-sm hidden-xs" id="coInscriptionBtnRow">
                                <a href="/inscription/" id="coInscriptionBtn">
                                    <button class="btn btn-primary">
                                        je veux m'inscrire !
                                    </button>
                                </a>
                            </div>
                        </div>
                    </section>
                    <section class="col-md-2 hidden-sm hidden-xs">
                        <img src="resources/img/connection2.gif" id="connection2Image">
                    </section>
                    <section class="col-md-5" id="connectSection">
                        <form name="coForm" method="POST" class="form-horizontal" role="form" id="coForm">
                            <div class="col-md-12" id="connectionForm">
                                <div class="form-group">
                                    <label for="pseudo" class="col-sm-6 control-label">Pseudo : </label>
                                    <div class="col-sm-6">
                                        <input id="pseudo" placeholder="Votre pseudo" class="form-control" type="text" name="pseudo" required />
                                    </div>     
                                </div>
                                <div class="form-group">
                                    <label for="password" class="col-sm-6 control-label">Mot de passe : </label>
                                    <div class="col-sm-6">
                                        <input id="password" class="form-control" type="password" name="password" required />
                                    </div>     
                                </div>
                            </div>
                            <div class="row" id="connectionBtnRow">
<!-- mettre bon lien ici -->                                
                                <a href="#">
                                    <button  id="connectionBtn" class="btn btn-primary">
                                        Connexion <span class="glyphicon glyphicon-ok-circle"></span>
                                    </button>
                                </a>
                                <a href="/inscription/" class="hidden-md hidden-lg">
                                    <button  id="hiddeninscriptionBtn" class="btn btn-primary">
                                        je veux m'inscrire !
                                    </button>
                                </a>
                            </div>
                        </form>
                    </section>
                </div>
            </div>
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
        <script src="resources/bootstrap/dist/js/jquery-1.11.1.min.js"></script>
        <script src="resources/bootstrap/dist/js/bootstrap.min.js"></script>
    </body>
</html>