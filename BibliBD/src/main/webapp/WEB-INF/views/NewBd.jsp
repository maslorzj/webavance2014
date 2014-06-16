<!DOCTYPE html>
<html lang="fr" ng-app="myApp">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Advanced Web Project">
    <meta name="author" content="EmeraldEnterprise">
    <link rel="shortcut icon" href="../../resources/bootstrap/docs/assets/ico/favicon.png">
    <script src="../../resources/js/angular.min.js"></script>
    <script src="../../resources/js/module.js"></script>
    <script src="../../resources/js/addBd.js"></script>
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

  <body ng-controller="AddBDController" ng-init="initController();">

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
    <!-- /Header -->

    <!-- Main -->
    <div class="container">
        <div class="row">
            <div class="col-sm-4"></div>
            <div class="col-sm-4"><h1>Ajouter une BD</h1></div>
            <div class="col-sm-4"></div>
        </div>
        <hr>
        <div class="col-sm-4 hidden-sm hidden-xs">
            <img src="../../resources/img/ajout.gif" id="addImage">
        </div>
        <form name="myForm" method="POST" class="form-horizontal col-sm-8" role="form">
            <div class="col-sm-12" id="addForm">
                <div class="form-group">
                    <label for="isbn" class="col-sm-6 control-label">ISBN : 
                        <span class="mandatoryField" ng-if="!myForm.isbn.$valid">Obligatoire</span>
                    </label>
                    <div class="col-sm-6">
                        <input id="isbn" placeholder="combinaison de 10 à 13 chiffres" class="form-control" type="text" name="isbn" ng-model="newBd.isbn" required />
                    </div>     
                </div>
                <div class="form-group">
                    <label for="title" class="col-sm-6 control-label">Titre : 
                        <span class="mandatoryField" ng-if="!myForm.title.$valid">Obligatoire</span>
                    </label>
                    <div class="col-sm-6">
                        <input id="title" class="form-control" type="text" name="title" ng-model="newBd.title" required /> 
                    </div> 
                </div>
                <div class="form-group">
                    <label for="LastNameAut" class="col-sm-6 control-label">Nom de l'auteur : 
                        <span class="mandatoryField" ng-if="!myForm.LastNameAut.$valid">Obligatoire</span>
                    </label>
                    <div class="col-sm-6">
                        <input id="LastNameAut" class="form-control" type="text" ng-model="newBd.authorName" />
                    </div>
                </div>
                <div class="form-group">
                    <label for="FirstNameAut" class="col-sm-6 control-label">Prénom de l'auteur : 
                        <span class="mandatoryField" ng-if="!myForm.FirstNameAut.$valid">Obligatoire</span>
                    </label>
                    <div class="col-sm-6">
                        <input id="FirstNameAut" class="form-control" type="text" ng-model="newBd.authorFirstname" />
                    </div>
                </div>
                <div class="form-group">
                    <label for="LastNameIll" class="col-sm-6 control-label">Nom de l'illustrateur : 
                        <span class="mandatoryField" ng-if="!myForm.LastNameIll.$valid">Obligatoire</span>
                    </label>
                    <div class="col-sm-6">
                        <input id="LastNameIll" class="form-control" type="text" ng-model="newBd.illustratorName" />
                    </div>
                </div>
                <div class="form-group">
                    <label for="FirstNameIll" class="col-sm-6 control-label">Prénom de l'illustrateur : 
                        <span class="mandatoryField" ng-if="!myForm.FirstNameIll.$valid">Obligatoire</span>
                    </label>
                    <div class="col-sm-6">
                        <input id="FirstNameIll" class="form-control" type="text" ng-model="newBd.illustratorFirstname" />
                    </div>
                </div>
                <div class="form-group">
                    <label for="editor" class="col-sm-6 control-label">Editeur : 
                        <span class="mandatoryField" ng-if="!myForm.editor.$valid">Obligatoire</span>
                    </label>
                    <div class="col-sm-6">
                        <input id="editor" class="form-control" type="text" ng-model="newBd.editor" />
                    </div>
                </div>
                <div class="form-group">
                    <label for="language" class="col-sm-6 control-label">Langue : </label>
                    <div class="col-sm-6">
                        <input id="language" class="form-control" type="text" ng-model="newBd.language" />
                    </div>
                </div>
                <div class="form-group">
                    <label for="date" class="col-sm-6 control-label">Année de publication : </label>
                    <div class="col-sm-6">
                        <input id="date" class="form-control" type="text" ng-model="newBd.publishDate" />
                    </div>
                </div>
                <div class="form-group">
                    <label for="serie" class="col-sm-6 control-label">Série : </label>
                    <div class="col-sm-6">
                        <input id="serie" class="form-control" type="text" ng-model="newBd.serie" />
                    </div>
                </div>
                <div class="form-group">
                    <label for="colorName" class="col-sm-6 control-label">Nom du coloriste : </label>
                    <div class="col-sm-6">
                        <input id="colorName" class="form-control" type="text" ng-model="newBd.colorName" />
                    </div>
                </div>
                <div class="form-group">
                    <label for="colorFirstname" class="col-sm-6 control-label">Prénom du coloriste : </label>
                    <div class="col-sm-6">
                        <input id="colorFirstname" class="form-control" type="text" ng-model="newBd.colorFirstname" />
                    </div>
                </div>

                <div ng-repeat="field in newBd.personnalFields">
                    <div class="col-sm-4">
                        <input type="text" class="form-control" ng-model="field.key" />
                    </div>
                    <div class="col-sm-4">
                        <input type="text" class="form-control" ng-model="field.value" />
                    </div>
                    <button ng-click="deleteField($index)" class="btn btn-primary">Supprimer</button>
                </div>
                <div ng-if="newFieldError"><span>{{newFieldError}}</span></div>
                <div id="addBtns">
                    <button class="btn btn-primary" ng-click="addField()">Ajouter un champs personnalisable</button>
                    <button class="btn btn-primary" ng-click="sendNewBD()">Envoyer</button>
                </div>
                    
            </div>
            <div ng-if="ajaxError"><span>{{ajaxError}}</span></div>
        </form>
      </div>
    <!-- /Main -->

    <!-- Footer -->
    <footer class="footer" role="footer">
      <div class="container">
          <p>© 2014 Emerald Enterprise</p>
      </div>
    </footer>
    <!-- /Footer -->


    <!-- Bootstrap core JavaScript -->
    <script src="../../resources/bootstrap/dist/js/jquery-1.11.1.min.js"></script>
    <script src="../../resources/bootstrap/dist/js/bootstrap.min.js"></script>
  </body>
</html>