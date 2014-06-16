<!DOCTYPE html>
<html ng-app="myApp">
    <head>    
        <title>Titre</title>
        <script>var bibliBd = ${bibliBd};</script>
        <script src="resources/js/angular.min.js"></script>
        <script src="resources/js/module.js"></script>
        <script src="resources/js/BdController.js"></script>
        <script src="resources/js/BdService.js"></script>
    </head>

    <body ng-controller="BdController" ng-init="initController();">
    	<a href="newBd">Add a new BD</a>
    
    	<!-- champs de recherche -->
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
    </body>
</html>