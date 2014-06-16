<!DOCTYPE html>
<html lang="fr" ng-app="myApp">
  <head>
    <script src="../../resources/js/angular.min.js"></script>
    <script src="../../resources/js/module.js"></script>
    <script src="../../resources/js/addUser.js"></script>
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

  <body ng-controller="AddUserController" ng-init="initController();">

    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="/bd/">Ma BibliBD</a>
        </div>
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li><a href="/bd/index"><span class="glyphicon glyphicon-home"></span>Accueil</a></li>
            <li><a href="/bd/">Ma BDthèque</a></li>
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
        <div class="row">
            <div class="col-sm-4"></div>
            <div class="col-sm-4"><h1>Inscription</h1></div>
            <div class="col-sm-4"></div>
        </div>
        <hr>
        <div class="col-sm-4 hidden-sm hidden-xs">
            <img src="images/ajout.gif" id="addImage">
        </div>
        <form name="inscForm" method="POST" class="col-lg-6">
                <div class="col-sm-12" id="addForm">
                    <span class="mandatoryField">Tous les champs sont obligatoires</span>
                    <div class="form-group">
                        <label for="pseudo" class="col-sm-6 control-label">Pseudo : </label>
                        <div class="col-sm-6">
                            <input id="pseudo" placeholder="Votre pseudo" class="form-control" type="text" name="pseudo" ng-model="user.pseudo" required />
                        </div>     
                    </div>
                    <div class="form-group">
                        <label for="email" class="col-sm-6 control-label">Email : </label>
                        <div class="col-sm-6">
                            <input id="email" placeholder="jeandupont@example.com" class="form-control" type="email" name="email" ng-model="user.email" required />
                        </div>     
                    </div>
                    <div class="form-group">
                        <label for="password" class="col-sm-6 control-label">Mot de passe : </label>
                        <div class="col-sm-6">
                            <input id="password" class="form-control" type="password" name="password" ng-model="user.password" required />
                        </div>     
                    </div>
                    <div class="form-group">
                        <label for="passwordConf" class="col-sm-6 control-label">Confirmation : 
                            <span class="mandatoryField" ng-if="!passwordsChecked">(identique)</span>
                        </label>
                        <div class="col-sm-6">
                            <input id="passwordConf" class="form-control" type="password" name="passwordConf" ng-model="user.passwordConf" ng-change="checkPasswords()" required />
                        </div>     
                    </div>
                </div>
                <div class="mandatoryField" ng-if="ajaxError"><span>{{ajaxError}}</span></div>
            <button ng-click="sendNewUser()">Envoyer</button>
        </form>
      </div>
    </div><!-- /.container -->

    <footer class="footer" role="footer">
      <div class="container">
          <p>© 2014 Emerald Enterprise</p>
      </div>
    </footer>



    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="../../resources/bootstrap/dist/js/jquery-1.11.1.min.js"></script>
    <script src="../../resources/bootstrap/dist/js/bootstrap.min.js"></script>
  </body>
</html>