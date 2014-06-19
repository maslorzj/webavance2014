<!DOCTYPE html>
<html lang="en" ng-app="myApp">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Advanced Web Project">
        <meta name="author" content="EmeraldEnterprise">
        <link rel="shortcut icon" href="../../resources/bootstrap/docs/assets/ico/favicon.png"><!-- pageBd/{{id}} -->
        <title>Ma BibliBD</title>

        <!-- Bootstrap core CSS -->
        <link href="../../resources/bootstrap/dist/css/bootstrap.css" rel="stylesheet">

        <!-- Custom styles for this template -->
        <link href="../../resources/css/bd.css" rel="stylesheet">

        <script>var bd = "";</script>
        <script src="../../resources/js/angular.min.js"></script>
        <script src="../../resources/js/module/module.js"></script>
        <script src="../../resources/js/controller/pageBdController.js"></script>
        <script src="../../resources/js/service/pageBdService.js"></script>
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
        <div class="main" id="pageBd">
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
                        <img src="../../resources/img/couv/default.png">
                    </section>
                    <section class="col-md-6" id="infoBD">
                        <label for="dateDisplay" class="col-sm-6 control-label">Date de publication:</label>
                        <p id="dateDisplay">--date--</p>
                        <label for="autorDisplay" class="col-sm-6 control-label">Auteur:*</label>
                        <p id="autorDisplay">--Nom auteur-- --Prénom auteur--</p>
                        <label for="illDisplay" class="col-sm-6 control-label">Illustrateur:*</label>
                        <p id="illDisplay">--Nom illustrateur-- --Prénom illustrateur--</p>
                        <label for="colorDisplay" class="col-sm-6 control-label">Coloriste:</label>
                        <p id="colorDisplay">--Nom coloriste-- --Prénom coloriste--</p>
                        <label for="serieDisplay" class="col-sm-6 control-label">Série:</label>
                        <p id="serieDisplay">--série--</p>
                        <label for="editorDisplay" class="col-sm-6 control-label">Editeur:*</label>
                        <p id="editorDisplay">--éditeur--</p>
                        <label for="langageDisplay" class="col-sm-6 control-label">Langue:</label>
                        <p id="langageDisplay">--langue--</p>
                        <label for="isbnDisplay" class="col-sm-6 control-label">ISBN:*</label>
                        <p id="isbnDisplay">--isbn--</p>
                    </section>
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
        <!-- Footer -->

        <!-- Bootstrap core JavaScript -->
        <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
        <script src="../../resources/bootstrap/dist/js/bootstrap.min.js"></script>
    </body>
</html>