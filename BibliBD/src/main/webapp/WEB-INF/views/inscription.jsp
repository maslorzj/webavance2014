<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr" ng-app="myApp">
  <head>
    <script src="resources/js/angular.min.js"></script>
    <script src="resources/js/module/module.js"></script>
    <script src="resources/js/controller/addUserController.js"></script>
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

  <body ng-controller="AddUserController" ng-init="initController();">

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
        <div class="main" id="inscription">
            <div class="container">
                <div class="row">
                    <div class="col-sm-4"></div>
                    <div class="col-sm-4"><h1>Inscription</h1></div>
                    <div class="col-sm-4"></div>
                </div>
                <hr>
                <div class="col-sm-4 hidden-sm hidden-xs">
                    <img src="resources/img/subscribe.png" id="inscriptionImage">
                </div>
                <form name="inscForm" method="POST" action="addUser" class="form-horizontal col-sm-8" role="form">
                    <div class="col-sm-12" id="inscriptionForm">
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
                    <p class="mandatoryField" id="allMandatory">Tous les champs sont obligatoires</p>
                    <div class="mandatoryField" ng-if="ajaxError"><span>{{ajaxError}}</span></div>
                    <div class="row" id="inscriptionBtnRow">
                        <button id="inscriptionBtn" class="btn btn-primary" ng-click="sendNewUser()">
                            Je veux m'inscrire <span class="glyphicon glyphicon-ok-circle"></span>
                        </button>
                    </div>
                </form>
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