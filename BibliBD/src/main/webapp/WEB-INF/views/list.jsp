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
        <script>
            var bds = ${bibliBd};
            var classifyingArray = ${classifyingArray};
        </script>
        <script src="resources/js/angular.min.js"></script>
        <script src="resources/js/module/module.js"></script>
        <script src="resources/js/controller/bibliBdController.js"></script>
        <script src="resources/js/service/bibliBdService.js"></script>
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

    <body ng-controller="BibliBdController" ng-init="initController();" ng-cloak>

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
                    <a class="navbar-brand" href="list"> Ma BibliBD</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="/BibliBD/"><span class="glyphicon glyphicon-home"></span> Accueil</a></li>
                        <li class="active"><a href="list"> Ma BDthèque</a></li>
                        <li><a href="newBd"><span class="glyphicon glyphicon-plus-sign"></span> Ajouter une nouvelle BD</a></li>
                        <li><a href="deconnexion"> Déconnexion</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- /Header -->

        <!-- Main -->
        <div class="main" id="displayBibliBD">
            <div class="container">
                <div class="row">
                    <div class="col-sm-4"></div>
                    <div class="col-sm-4"><h1>Ma BDthèque</h1></div>
                    <div class="col-sm-4"></div>
                </div>
                <hr>

                <!-- recherche dans sa bibliBD -->
                <div class="row">
                    <form class="form-horizontal col-md-3">
                        <div class="input-group">
                            <input type="text" ng-model="search" class="form-control" placeholder="Rechercher dans ma BDthèque" />
                            <span class="input-group-btn">
                                <button type="submit" class="btn btn-primary">
                                    <span class="glyphicon glyphicon-search"></span>
                                </button>
                            </span>
                        </div>
                    </form>
                </div>

                <div class="row" id="rowFilters">
                    <section class="col-md-4">
                        <h4 id="orderTitle">Trier ma BDthèque :</h4>
                        <!-- bouton retour arrière -->
                        <div id="returnBtn">
                            <button class="btn btn-primary" ng-click="lastOrder();" ng-disabled="currentOrder === 0">Retour</button>
                        </div>
                    </section>
                    <!-- choix des filtres -->
                    <section class="globalFilters col-md-4">
                        <div class="control-group" ng-repeat="filter in filterOrders" id="allFilters">
                            <select ng-change="changeFilter();" ng-model="filterOrders[$index]" >
                                <option ng-repeat="available in filtersAvailable| filter:checkAvailableFilters($index);"
                                        ng-selected="available === filterOrders[$parent.$index]" ng-value="available">{{setFilterNames(available)}}</option>
                            </select>
                            <button  class="btn btn-primary" ng-click="deleteFilter($index)" 
                                     ng-disabled="filterOrders.length === 1">Supprimer</button>
                        </div>
                    </section>
                    <!-- bouton ajouter filtre -->
                    <section class="globalFilters">
                        <div id="addFilter" class="col-md-4">
                            <button class="btn btn-primary" ng-click="addNewFilter()" 
                                 ng-disabled="filterOrders.length === filtersAvailable.length">Ajouter un filtre</button>
                        </div>
                    </section>
                </div>
                <div class="row">
                    <!-- partie de gauche -->
                    <div class ="col-md-2">
                        <div ng-repeat="printed in currentPrinted| filter:search | orderBy:filterOrders" 
                            ng-click="nextOrder(printed);" id="allFiltered">
                            <a href="#">{{printed}}</a>
                        </div>
                    </div>
                    <!-- partie du milieu -->
                    <div class ="col-xs-offset-2">
                        <div ng-repeat="bd in bds| filter:search | orderBy:filterOrders">
                            <a ng-href="pageBd&id={{bd.id}}">
                                <div class="col-xs-3">
                                    <ul class="pic">
                                        <li>
                                            <a ng-href="pageBd&id={{bd.id}}">
                                                <img class="photos photosSize" ng-src="{{bd.couvPath}}" alt=""/>
                                                <div class="text">
                                                    <div>
                                                        <p>Titre : {{bd.title}}</p>
                                                        <p>Editeur : {{bd.editor}}</p>
                                                        <p>Nom de l'auteur : {{bd.authorFirstname}} {{bd.authorName}}</p>
                                                    </div>
                                                </div>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- /Main -->

        <!-- Footer -->
        <footer class="footer">
            <div class="container">
                <p>© 2014 Emerald Enterprise</p>
            </div>
        </footer>
        <!-- /Footer -->

        <!-- Bootstrap core JavaScript -->
        <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
        <script src="resources/bootstrap/dist/js/bootstrap.min.js"></script>
    </body>
</html>