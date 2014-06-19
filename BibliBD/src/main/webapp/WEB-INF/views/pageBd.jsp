<!DOCTYPE html>
<html lang="en" ng-app="myApp">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Advanced Web Project">
        <meta name="author" content="EmeraldEnterprise">
        <link rel="shortcut icon" href="resources/bootstrap/docs/assets/ico/favicon.png"><!-- pageBd&id={{id}} -->
        <title>Ma BibliBD</title>

        <!-- Bootstrap core CSS -->
        <link href="resources/bootstrap/dist/css/bootstrap.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="resources/css/bd.css" rel="stylesheet">

        <script>
            var bd = JSON.parse(${bd});
            var isInBibliBd = ${isInBibliBd};
        </script>
        <script src="resources/js/angular.min.js"></script>
        <script src="resources/js/module/module.js"></script>
        <script src="resources/js/controller/pageBdController.js"></script>
        <script src="resources/js/service/pageBdService.js"></script>
    </head>

    <body ng-controller="PageBdController">

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
                    <a class="navbar-brand" href="#">Ma BibliBD</a>
                </div>
                <div class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="#"><span class="glyphicon glyphicon-home"></span> Accueil</a></li>
                        <li><a href="#"> Ma BDthèque</a></li>
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
                </div>
            </div>
        </div>
        <!-- /Header -->

        <!-- Main -->
        <div class="main" id="pageBd" ng-cloak>
            <div class="container">
                <div class="row">
                    <div class="col-sm-4"></div>
                    <div class="col-sm-4"><h1>--Ici Nom de la BD--</h1></div>
                    <div class="col-sm-4"></div>
                </div>
                <hr>
                <div class="row">
                    <section class="col-md-6">
                        <!-- if no image use default image -->
                        <img ng-src="{{PageBdService.bd.couvPath}}">
                    </section>
                    <section class="col-md-6" id="infoBD">
                        <div>
                            <label for="dateDisplay" class="col-sm-6 control-label">Date de publication:</label>
                            <p id="dateDisplay">{{PageBdService.bd.publishDate}}</p>
                        </div>
                        <div>
                            <label for="autorDisplay" class="col-sm-6 control-label">Auteur:</label>
                            <p id="autorDisplay">{{PageBdService.bd.authorName}} {{PageBdService.bd.authorFirstname}}</p>
                        </div>
                        <div>
                            <label for="illDisplay" class="col-sm-6 control-label">Illustrateur:</label>
                            <p id="illDisplay">{{PageBdService.bd.illusName}} {{PageBdService.bd.illusFirstname}}</p>
                        </div>
                        <div ng-if="PageBdService.bd.colorName || PageBdService.bd.colorFirstname">
                            <label for="colorDisplay" class="col-sm-6 control-label">Coloriste:</label>
                            <p id="colorDisplay">{{PageBdService.bd.colorName}} {{PageBdService.bd.colorFirstname}}</p>
                        </div>
                        <div ng-if="PageBdService.bd.serie">
                            <label for="serieDisplay" class="col-sm-6 control-label">Série:</label>
                            <p id="serieDisplay">{{PageBdService.bd.serie}}</p>
                        </div>
                        <div>
                            <label for="editorDisplay" class="col-sm-6 control-label">Editeur:</label>
                            <p id="editorDisplay">{{PageBdService.bd.editor}}</p>
                        </div>
                        <div ng-if="PageBdService.bd.serie">
                            <label for="langageDisplay" class="col-sm-6 control-label">Langue:</label>
                            <p id="langageDisplay">{{PageBdService.bd.language}}</p>
                        </div>
                        <div>
                            <label for="isbnDisplay" class="col-sm-6 control-label">ISBN:</label>
                            <p id="isbnDisplay">{{PageBdService.bd.id}}</p>
                        </div>
                    </section>
                </div>
            </div>
        </div>
        <a ng-if="!PageBdService.isInBibliBd" ng-href="addToBibiliBd&id={{PageBdService.bd.id}}">Ajouter à la bibliBD</a>
        <a ng-if="PageBdService.isInBibliBd" ng-href="delFromBibiliBd&id={{PageBdService.bd.id}}">Supprimer de la bibliBD</a>
        <!-- /Main -->

        <!-- Footer -->
        <footer class="footer">
            <div class="container">
                <p>© 2014 Emerald Enterprise</p>
            </div>
        </footer>
        <!-- Footer -->

        <!-- Bootstrap core JavaScript -->
        <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
        <script src="resources/bootstrap/dist/js/bootstrap.min.js"></script>
    </body>
</html>