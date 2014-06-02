<!DOCTYPE html>
<html ng-app="myApp">
    <head>
        <title>Titre</title>
        <script src="resources/js/angular.min.js"></script>
        <script src="resources/js/module.js"></script>
        <script src="resources/js/addBd.js"></script>
    </head>

    <body ng-controller="AddBDController" ng-init="initController();">
    	<form>
            <div>ISBN : <input type="text" ng-model="newBd.isbn" /></div>
            <div>Titre : <input type="text" ng-model="newBd.title" /></div>
            <div>Nom de l'auteur : <input type="text" ng-model="newBd.authorName" /></div>
            <div>Prénom de l'auteur : <input type="text" ng-model="newBd.authorFirstname" /></div>
            <div>Nom de l'illustrateur : <input type="text" ng-model="newBd.illustratorName" /></div>
            <div>Pr�nom de l'illustrateur : <input type="text" ng-model="newBd.illustratorFirstname" /></div>
            <div>Editeur : <input type="text" ng-model="newBd.editor" /></div>
            <div>Langue : <input type="text" ng-model="newBd.language" /></div>
            <div>Date de publication : <input type="text" ng-model="newBd.publishDate" /></div>
            <div ng-repeat="field in newBd.personnalFields">
                <input type="text" ng-model="field.key" />
                <input type="text" ng-model="field.value" />
                <button ng-click="deleteField($index)">Supprimer</button>
            </div>
            <button ng-click="addField()">Ajouter un champ personnalisable</button>
            <button ng-click="submit()">Submit</button>
        </form>
    </body>
</html>