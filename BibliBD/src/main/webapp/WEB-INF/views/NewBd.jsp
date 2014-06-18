<!DOCTYPE html>
<html lang="fr" ng-app="myApp">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Advanced Web Project">
    <meta name="author" content="EmeraldEnterprise">
    <link rel="shortcut icon" href="resources/bootstrap/docs/assets/ico/favicon.png">
    <script src="resources/js/angular.min.js"></script>
    <script src="resources/js/module.js"></script>
    <script src="resources/js/addBd.js"></script>
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
            <li><a href="/bd/index"><span class="glyphicon glyphicon-home"></span> Accueil</a></li>
            <li><a href="/bd/"> Ma BDthèque</a></li>
            <li class="active"><a href="newBd"><span class="glyphicon glyphicon-plus-sign"></span> Ajouter une nouvelle BD</a></li>
            <li>          
              <form class="navbar-form">
                <input type="text" style="width:150px" class="input-sm form-control" placeholder="rechercher">
                <button type="submit" class="btn btn-primary btn-sm"><span class="glyphicon glyphicon-search"></span></button>
              </form>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <!-- /Header -->

    <!-- Main -->
    <div class="main">
        <div class="container">
            <div class="row">
                <div class="col-sm-4"></div>
                <div class="col-sm-4"><h1>Ajouter une BD</h1></div>
                <div class="col-sm-4"></div>
            </div>
            <hr>
            <div class="col-sm-4 hidden-sm hidden-xs">
                <img src="resources/img/ajout.gif" id="addImage">
            </div>
            <form name="myForm" method="POST" class="form-horizontal col-sm-8" role="form">
                <div class="col-sm-12" id="addForm">
                    <div class="form-group">
                        <label for="id" class="col-sm-6 control-label">ISBN : 
                            <span class="mandatoryField" ng-if="!myForm.id.$valid || !idLengthChecked">Obligatoire (10 ou 13 caractères)</span>
                        </label>
                        <div class="col-sm-6">
                            <input id="id" ng-change="checkIDLength()" placeholder="combinaison de 10 à 13 chiffres" class="form-control" type="text" name="id" ng-model="newBd.id" required/>
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
                        <label for="authorName" class="col-sm-6 control-label">Nom de l'auteur : 
                            <span class="mandatoryField" ng-if="!myForm.authorName.$valid">Obligatoire</span>
                        </label>
                        <div class="col-sm-6">
                            <input id="authorName" class="form-control" type="text" name="authorName" ng-model="newBd.authorName" required />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="authorFirstname" class="col-sm-6 control-label">Prénom de l'auteur : 
                            <span class="mandatoryField" ng-if="!myForm.authorFirstname.$valid">Obligatoire</span>
                        </label>
                        <div class="col-sm-6">
                            <input id="authorFirstname" class="form-control" type="text" name="authorFirstname" ng-model="newBd.authorFirstname" required />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="illustratorName" class="col-sm-6 control-label">Nom de l'illustrateur : 
                            <span class="mandatoryField" ng-if="!myForm.illustratorName.$valid">Obligatoire</span>
                        </label>
                        <div class="col-sm-6">
                            <input id="illustratorName" class="form-control" name="illustratorName" type="text" ng-model="newBd.illustratorName" required/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="illustratorFirstname" class="col-sm-6 control-label">Prénom de l'illustrateur : 
                            <span class="mandatoryField" ng-if="!myForm.illustratorFirstname.$valid">Obligatoire</span>
                        </label>
                        <div class="col-sm-6">
                            <input id="illustratorFirstname" name="illustratorFirstname" class="form-control" type="text" ng-model="newBd.illustratorFirstname" required/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="editor" class="col-sm-6 control-label">Editeur : 
                            <span class="mandatoryField" ng-if="!myForm.editor.$valid">Obligatoire</span>
                        </label>
                        <div class="col-sm-6">
                            <input id="editor" name="editor" class="form-control" type="text" ng-model="newBd.editor" required/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="language" class="col-sm-6 control-label">Langue : </label>
                        <div class="col-sm-6">
                            <input id="language" class="form-control" name="language" type="text" ng-model="newBd.language" required />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="publishDate" class="col-sm-6 control-label">Année de publication : </label>
                        <div class="col-sm-6">
                            <input id="publishDate" name="publishDate" class="form-control" type="date" ng-model="newBd.publishDate" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="serie" class="col-sm-6 control-label">Série : </label>
                        <div class="col-sm-6">
                            <input id="serie" name="serie" class="form-control" type="text" ng-model="newBd.serie" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="colorName" class="col-sm-6 control-label">Nom du coloriste : </label>
                        <div class="col-sm-6">
                            <input id="colorName" name="colorName" class="form-control" type="text" ng-model="newBd.colorName"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="colorFirstname" class="col-sm-6 control-label">Prénom du coloriste : </label>
                        <div class="col-sm-6">
                            <input id="colorFirstname" name="colorFirstname" class="form-control" type="text" ng-model="newBd.colorFirstname" />
                        </div>
                    </div>
                    <div class="form-group" data-trigger="fileinput">
                        <label for="couvPath" class="col-sm-6 control-label">Image de couverture : </label>
                        <div class="col-sm-6">


            <div class="input-group image-preview">
                <input type="text" class="form-control image-preview-filename" disabled="disabled"> <!-- don't give a name === doesn't send on POST/GET -->
                <span class="input-group-btn">
                    <!-- image-preview-clear button -->
                    <button type="button" class="btn btn-default image-preview-clear" style="display:none;">
                        <span class="glyphicon glyphicon-remove"></span> Clear
                    </button>
                    <!-- image-preview-input -->
                    <div class="btn btn-default image-preview-input">
                        <span class="glyphicon glyphicon-folder-open"></span>
                        <span class="image-preview-input-title">Browse</span>
                        <input type="file" accept="image/png, image/jpeg, image/gif" id="couvPath" name="couvPath" type="file" ng-model="newBd.couvPath"/> <!-- rename it -->
                    </div>
                </span>
            </div>       

            
                        </div>
                    </div>
                    <div id="addBtns">
                        <button class="btn btn-primary" ng-click="sendNewBD()">Envoyer</button>
                    </div>
                        
                </div>
                <div ng-if="ajaxError"><span>{{ajaxError}}</span></div>
            </form>
        </div>
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
    <script src="resources/bootstrap/dist/js/jquery-1.11.1.min.js"></script>
    <script src="resources/bootstrap/dist/js/bootstrap.min.js"></script>
  </body>
</html>