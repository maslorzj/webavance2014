<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr" ng-app="myApp">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Advanced Web Project">
        <meta name="author" content="EmerauldEnterprise">
        <link rel="shortcut icon" href="resources/css/bootstrap/docs/assets/ico/favicon.png">
        <script>var bibliBd = ${bibliBd};</script>
        <script src="resources/js/angular.min.js"></script>
        <script src="resources/js/module.js"></script>
        <script src="resources/js/BdController.js"></script>
        <script src="resources/js/BdService.js"></script>
        <title>Ma BibliBD</title>

        <!-- Bootstrap core CSS -->
        <link href="resources/bootstrap/dist/css/bootstrap.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="resources/css/bd.css" rel="stylesheet">

        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
          <script src="assets/js/html5shiv.js"></script>
          <script src="assets/js/respond.min.js"></script>
        <![endif]-->
    </head>

    <body ng-controller="BdController" ng-init="initController();" ng-cloak>

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
                        <li class="active"><a href="list">Ma BDthèque</a></li>
                        <li><a href="newBd"><span class="glyphicon glyphicon-plus-sign"></span>Ajouter une nouvelle BD</a></li>
                        <li>          
                            <form class="navbar-form">
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="rechercher">
                                    <span class="input-group-btn">
                                        <button type="submit" class="btn btn-primary">
                                            <span class="glyphicon glyphicon-search"></span>
                                        </button>
                                    </span>
                                </div>
                            </form>
                        </li>
                    </ul>
                </div><!--/.nav-collapse -->
            </div>
        </div>

        <div class="container">
            <div class="row">
                <div class="col-sm-4"></div>
                <div class="col-sm-4"><h1>Ma BDthèque</h1></div>
                <div class="col-sm-4"></div>
            </div>
            <hr>
            <h3>Trier ma BDthèque :</h3>
            
        <input type="text" ng-model="search" />

        <!-- bouton retour arri�re -->
        <button class="btn btn-primary" ng-click="lastOrder();" ng-disabled="currentOrder == 0">Back</button>
        
        <!-- choix des filtres -->
        <div>
            <div ng-repeat="filter in filterOrders">
                <select ng-change="changeFilter();" ng-model="filterOrders[$index]" >
                    <option ng-repeat="available in filtersAvailable | filter:checkAvailableFilters($index);"
                        ng-selected="available==filterOrders[$parent.$index]" ng-value="available">{{setFilterNames(available)}}</option>
                </select>
                <button  class="btn btn-primary" ng-click="deleteFilter($index)" 
                    ng-disabled="filterOrders.length==1">Delete</button>
            </div>
            <!-- bouton ajouter filtre -->
            <button  class="btn btn-primary" ng-click="addNewFilter()" 
                ng-disabled="filterOrders.length==filtersAvailable.length">Add filter</button>
        </div>

        <!-- partie de gauche -->
        <ul class ="col-sm-1">
            <li ng-repeat="printed in currentPrinted | filter:search | orderBy:filterOrders" 
                ng-click="nextOrder(printed);">
                <p>{{printed}}</p>
            </li>
        </ul>

        <!-- partie du milieu -->
        <div class ="col-xs-offset-2">
            <ul>
                <li ng-repeat="bd in bds | filter:search | orderBy:filterOrders" 
                    ng-click="nextOrder(bd[filterOrders[currentOrder]]);"  >
                    <p>Titre : {{bd.title}}</p>
                    <p>Editeur : {{bd.editor}}</p>
                    <p>Nom de l'auteur : {{bd.authorFirstname}} {{bd.authorName}}</p>                    
                </li>
            </ul>
        </div>    
        </div>
        <!-- /.container -->

        <footer class="footer">
            <div class="container">
                <p>© 2014 Emerald Enterprise</p>
            </div>
        </footer>

        <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
        <script src="resources/bootstrap/dist/js/bootstrap.min.js"></script>
    </body>
</html>