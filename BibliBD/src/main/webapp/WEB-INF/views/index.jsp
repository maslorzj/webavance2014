<!-- <%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> -->
<!DOCTYPE html>
<html lang="fr" ng-app="myApp">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Advanced Web Project">
        <meta name="author" content="EmeraldEnterprise">
        <script>
            var bds = ${bdtheque};
            var isConnected = ${isConnected};
        </script>
        <script src="resources/js/angular.min.js"></script>
        <script src="resources/js/module/module.js"></script>
        <script src="resources/js/controller/indexController.js"></script>
        <script src="resources/js/service/bibliBdService.js"></script>
        <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/angular-ui-bootstrap/0.10.0/ui-bootstrap-tpls.min.js"></script>
        <link rel="shortcut icon" href="resources/bootstrap/docs/assets/ico/favicon.png">
    
        <title>Ma BibliBD</title>

        <!-- Bootstrap core CSS -->
        <link href="resources/bootstrap/dist/css/bootstrap.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="resources/css/bd.css" rel="stylesheet">
    </head>

    <body  ng-controller="IndexController" ng-cloack>

        <!-- Header -->
        <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span ng-if="!isConnected" class="icon-bar"></span>
                        <span ng-if="!isConnected" class="icon-bar"></span>
                        <span ng-if="isConnected" class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="list"> Ma BibliBD</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href="/BibliBD/"><span class="glyphicon glyphicon-home"></span> Accueil</a></li>
                        <li><a href="list"> Ma BDthèque</a></li>
                        <li><a href="newBd"><span class="glyphicon glyphicon-plus-sign"></span> Ajouter une nouvelle BD</a></li>
                        <li ng-if="!isConnected"><a href="inscription"> Inscription</a></li>
                        <li ng-if="!isConnected"><a href="connexion"> Connexion</a></li>
                        <li ng-if="isConnected"><a href="deconnexion"> Déconnexion</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- /Header -->

        <!-- Main -->
        <div class="main" id="accueil">  
            <div class="container">
                <div class="container marketing" id="photoContainer">
                    <div>
                        <div ng-repeat="bd in bds| filter:search | orderBy:filterOrders">
                            <div class="col-xs-3">
                                <ul class="pic">
                                    <a ng-href="pageBd&id={{bd.id}}">
                                        <li>
                                            <img class="photos photosSize" ng-src="{{bd.couvPath}}" alt=""/>
                                            <div class="text">
                                                <div>
                                                    <p>Titre : {{bd.title}}</p>
                                                    <p>Editeur : {{bd.editor}}</p>
                                                    <p>Nom de l'auteur : {{bd.authorFirstname}} {{bd.authorName}}</p>
                                                </div>
                                            </div>
                                        </li>
                                    </a>
                                </ul>
                            </div>
                        </div>
                    </div>
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