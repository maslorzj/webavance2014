<!DOCTYPE html>
<html lang="fr" ng-app="myApp">
  <head>
    <script src="resources/js/angular.min.js"></script>
    <script src="resources/js/module.js"></script>
    <script src="resources/js/addBd.js"></script>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Advanced Web Project">
    <meta name="author" content="EmerauldEnterprise">
    <link rel="shortcut icon" href="resources/bootstrap/docs/assets/ico/favicon.png">
    
    <title>Ma BibliBD</title>

    <!-- Bootstrap core CSS -->
    <link href="resources/bootstrap/dist/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="resources/css/bd.css" rel="stylesheet">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="../../assets/js/html5shiv.js"></script>
      <script src="../../assets/js/respond.min.js"></script>
    <![endif]-->
  </head>

  <body ng-controller="AddBDController" ng-init="initController();">

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
      <div class="starter-template">
        <h1>Ajouter une BD</h1>
        <form name="myForm" method="POST" action="add" class="col-lg-6">
                <label for="id">ISBN* : </label>
                <input id="id" type="text" name="id" ng-model="newBd.id" required />
                <span ng-if="!myForm.id.$valid">Obligatoire</span>
                <label for="title">Titre* : </label>
                <input id="title" type="text" name="title" ng-model="newBd.title" required />
                <span ng-if="!myForm.title.$valid">Obligatoire</span>
                <label for="LastNameAut">Nom de l'auteur* : </label>
                <input id="LastNameAut" type="text" ng-model="newBd.authorName" />
                <label for="FirstNameAut">Prénom de l'auteur* : </label>
                <input id="FirstNameAut" type="text" ng-model="newBd.authorFirstname" />
                <label for="LastNameIll">Nom de l'illustrateur* : </label>
                <input id="LastName" type="text" ng-model="newBd.illustratorName" />
                <label for="FirstNameIll">Prénom de l'illustrateur* : </label>
                <input id="FirstName" type="text" ng-model="newBd.illustratorFirstname" />
                <label for="editor">Editeur* : </label>
                <input id="editor" type="text" ng-model="newBd.editor" />
                <label for="language">Langue* : </label>
                <input id="language" type="text" ng-model="newBd.language" />
                <label for="date">Date de publication* : </label>
                <input id="date" type="text" ng-model="newBd.publishDate" />
            <!-- <div ng-repeat="field in newBd.personnalFields">
                <input type="text" ng-model="field.key" />
                <input type="text" ng-model="field.value" />
                <button ng-click="deleteField($index)">Supprimer</button>
            </div>
            <div ng-if="newFieldError"><span>{{newFieldError}}</span></div>
            <button ng-click="addField()">Ajouter un champs personnalisable</button> -->
            <button ng-click="submit()">Submit</button>
        </form>
      </div>
    </div><!-- /.container -->

    <footer class="footer" role="footer">
      <div class="container">
          <p>© 2014 Emerauld Enterprise</p>
      </div>
    </footer>



    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="resources/bootstrap/dist/js/jquery-1.11.1.min.js"></script>
    <script src="resources/bootstrap/dist/js/bootstrap.min.js"></script>
  </body>
</html>