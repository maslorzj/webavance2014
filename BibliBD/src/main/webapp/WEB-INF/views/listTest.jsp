<!DOCTYPE html>
<html lang="en" ng-app="myApp">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Advanced Web Project">
        <meta name="author" content="EmerauldEnterprise">
        <link rel="shortcut icon" href="../../resources/bootstrap/docs/assets/ico/favicon.png">
        <script>var bibliBd = ${bibliBd};</script>
        <script src="../../resources/js/angular.min.js"></script>
        <script src="../../resources/js/module.js"></script>
        <script src="../../resources/js/BdController.js"></script>
        <script src="../../resources/js/BdService.js"></script>
        <title>Ma BibliBD</title>

        <!-- Bootstrap core CSS -->
        <link href="../../resources/bootstrap/dist/css/bootstrap.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="../../resources/css/bd.css" rel="stylesheet">

        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
          <script src="../../assets/js/html5shiv.js"></script>
          <script src="../../assets/js/respond.min.js"></script>
        <![endif]-->
    </head>

    <body ng-controller="BdController" ng-init="initController();">

        <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">Ma BibliBD</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="#"><span class="glyphicon glyphicon-home"></span> Accueil</a></li>
                        <li class="active"><a href="#">Ma BDthèque</a></li>
                        <li><a href="newBd"><span class="glyphicon glyphicon-plus-sign"></span> Ajouter une nouvelle BD</a></li>
                        <li>          
                            <form class="navbar-form">
                                <div class="input-group">
                                    <input type="text" class="form-control" placeholder="rechercher">
                                    <span class="input-group-btn">
                                        <button type="submit" class="btn btn-primary" type="button">
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
        <input type="text" ng-model="search" />

        <!-- bouton retour arrière -->
        <button ng-click="lastOrder();" ng-disabled="currentOrder == 0">Back</button>
        
        <!-- choix des filtres -->
        <div>
            <div ng-repeat="filter in filterOrders">
                <select ng-change="changeFilter($index);" ng-model="filterOrders[$index]" >
                    <option ng-repeat="available in filtersAvailable | filter:checkAvailableFilters($index);" 
                        ng-selected="available==filterOrders[$parent.$index]" >{{available}}</option>
                </select>
                <button ng-click="deleteFilter($index)" 
                    ng-disabled="filterOrders.length==1">Delete</button>
            </div>
            <!-- bouton ajouter filtre -->
            <button ng-click="addNewFilter()" 
                ng-disabled="filterOrders.length==filtersAvailable.length">Add filter</button>
        </div>

        <!-- partie de gauche -->
        <ul>
            <li ng-repeat="printed in currentPrinted | filter:search | orderBy:filterOrders" 
                ng-click="nextOrder(printed);">
                <p>{{printed}}</p>
            </li>
        </ul>

        <!-- partie du milieu -->
        <div>
            <ul>
                <li ng-repeat="printed in currentPrinted | filter:search | orderBy:filterOrders" 
                    ng-click="nextOrder(printed);"  
                    ng-if="currentOrder < filterOrders.length-1">
                    <p>{{printed}}</p>
                </li>
            </ul>
            <ul>
                <li ng-repeat="bd in bds | filter:search | orderBy:filterOrders" 
                    ng-click="nextOrder(printed[filterOrders[currentOrder]]);"  
                    ng-if="currentOrder == filterOrders.length-1">
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
                <p>© 2014 Emerauld Enterprise</p>
            </div>
        </footer>

        <!-- Bootstrap core JavaScript
        ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
        <script src="../../resources/bootstrap/dist/js/bootstrap.min.js"></script>
    </body>
</html>