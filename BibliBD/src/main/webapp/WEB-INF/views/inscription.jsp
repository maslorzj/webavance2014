
<!DOCTYPE html>
<html lang="fr" ng-app="myApp">
  <head>
    <script src="../../resources/js/angular.min.js"></script>
    <script src="../../resources/js/module/module.js"></script>
    <script src="../../resources/js/modal.js"></script>
    <script src="../../resources/js/controller/addUserController.js"></script>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Advanced Web Project">
    <meta name="author" content="EmeraldEnterprise">
    <link rel="shortcut icon" href="../../resources/bootstrap/docs/assets/ico/favicon.png">
    
    <title>Ma BibliBD</title>

    <!-- Bootstrap core CSS -->
    <link href="../../resources/bootstrap/dist/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="../../resources/css/bd.css" rel="stylesheet">
  </head>

  <body ng-controller="AddUserController" ng-init="initController();">

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
              <a class="navbar-brand" href="list">Ma BibliBD</a>
            </div>
            <div class="collapse navbar-collapse">
              <ul class="nav navbar-nav">
                <li><a href="/BibliBD/"><span class="glyphicon glyphicon-home"></span>Accueil</a></li>
                <li><a href="list">Ma BDthèque</a></li>
                <li><a href="newBd"><span class="glyphicon glyphicon-plus-sign"></span>Ajouter une nouvelle BD</a></li>
              </ul>
            </div>
          </div>
        </div>
        <!-- /Header -->

        <!-- Main -->
        <div class="main" id="inscription">
            <div class="container">
                <div class="row">
                    <div class="col-sm-4"></div>
                    <div class="col-sm-4"><h1>Inscription</h1></div>
                    <div class="col-sm-4"></div>
                </div>
                <hr>
                <div class="col-sm-4 hidden-sm hidden-xs">
                    <img src="../../resources/img/subscribe.png" id="inscriptionImage">
                </div>
                <form name="inscForm" method="POST" action="addUser" class="form-horizontal col-sm-8" role="form">
                    <div class="col-sm-12" id="inscriptionForm">
                        <div class="form-group">
                            <label for="pseudo" class="col-sm-6 control-label">Pseudo : </label>
                            <div class="col-sm-6">
                                <input id="pseudo" placeholder="Votre pseudo" class="form-control" type="text" name="pseudo" ng-model="user.pseudo" required />
                            </div>     
                        </div>
                        <div class="form-group">
                            <label for="email" class="col-sm-6 control-label">Email : </label>
                            <div class="col-sm-6">
                                <input id="email" placeholder="jeandupont@example.com" class="form-control" type="email" name="email" ng-model="user.email" required />
                            </div>     
                        </div>
                        <div class="form-group">
                            <label for="password" class="col-sm-6 control-label">Mot de passe : </label>
                            <div class="col-sm-6">
                                <input id="password" class="form-control" type="password" name="password" ng-model="user.password" required />
                            </div>     
                        </div>
                        <div class="form-group">
                            <label for="passwordConf" class="col-sm-6 control-label">Confirmation : 
                                <span class="mandatoryField" ng-if="!passwordsChecked">(identique)</span>
                            </label>
                            <div class="col-sm-6">
                                <input id="passwordConf" class="form-control" type="password" name="passwordConf" ng-model="user.passwordConf" ng-change="checkPasswords()" required />
                            </div>     
                        </div>
                    </div>
                    <p id="acceptCond">
                        <input name="checkboxes" id="checkboxes-0" type="checkbox"> 
                        J'accèpte les 
                        <a data-toggle="modal" href="#modalCond">
                            conditions générales d'utilisation
                        </a>
                    </p>
                    <!--modal-->
                    <div class="modal" id="modalCond">
                        <div class="modal-dialog">
                          <div class="modal-content">
                            <div class="modal-header">
                              <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                              <h3 class="modal-title">Conditions générales d'utilisation du site</h3>
                            </div>
                            <div class="modal-body">
                                <p>Les présentes Conditions Générales ont pour objet de définir les modalités de mise à disposition des services du site maBibliBD, ci-après nommé « le Service » et les conditions d'utilisation du Service par l'Utilisateur.</p>
                                <p>Tout accès et/ou Utilisation du site maBibliBD suppose l'acceptation et le respect de l'ensemble des termes des présentes Conditions et leur acceptation inconditionnelle. Elles constituent donc un contrat entre le Service et l'Utilisateur.</p>
                                <p>Dans le cas où l'Utilisateur ne souhaite pas accepter tout ou partie des présentes conditions générales, il lui est demandé de renoncer à tout usage du Service.</p>
                                <h4>1. Confidentialité</h4>
                                <p>Dans une logique de respect de la vie privée de ses Utilisateurs, maBibliBD s'engage à ce que la collecte et le traitement d'informations personnelles, effectués au sein du présent site, soient effectués conformément à la loi n°78-17 du 6 janvier 1978 relative à l'informatique, aux fichiers et aux libertés, dite Loi « Informatique et Libertés ».</p>
                                <h4>2. Sécurité</h4>
                                <p>Nous faisons tout notre possible pour faire de maBibliBD un service sûr, mais ne pouvons pas garantir la sécurité absolue. Pour assurer la sécurité sur maBibliBD, nous avons besoin de votre aide, ce qui inclut des engagements de votre part.</p>
                                <h4>3. Inscription</h4>
                                <p>L'inscription est gratuite et sans engagement. Les utilisateurs de maBibliBD donnent leur vrai nom et de vraies informations les concernant, et nous vous demandons de nous aider à ce que cela ne change pas.</p>
                                <h4>4. Mobile et autres appareils</h4>
                                <p> Nous proposons actuellement des services mobiles gratuits. Cependant, les tarifs appliqués par votre opérateur, comme pour l’envoi de textos et de données, restent à votre charge. Dans le cas où vous changeriez de numéro de téléphone mobile ou désactiveriez votre compte de téléphonie mobile, vous mettrez votre compte à jour sur maBibliBD dans les 48 heures, et ce, afin d’assurer que les messages qui vous sont destinés ne soient pas envoyés à la personne à qui votre ancien numéro de téléphone serait affecté. Vous donnez votre accord et tous les droits dont les utilisateurs ont besoin pour synchroniser (y compris via une application) sur leur appareil les informations auxquelles ils ont accès sur maBibliBD.</p>
                            </div>
                            <div class="modal-footer">
                              <a href="#" data-dismiss="modal" class="btn">Fermer</a>
                            </div>
                          </div>
                        </div>
                    </div>
                    <p class="mandatoryField" id="allMandatory">Tous les champs sont obligatoires</p>
                    <div class="mandatoryField" ng-if="ajaxError"><span>{{ajaxError}}</span></div>
                    <div class="row" id="inscriptionBtnRow">
                        <button id="inscriptionBtn" class="btn btn-primary" ng-click="sendNewUser()">
                            Je veux m'inscrire <span class="glyphicon glyphicon-ok-circle"></span>
                        </button>
                    </div>
                </form>
            </div>
        </div>
        <!-- /Main -->

        <!-- Footer -->
        <footer class="footer navbar-fixed-bottom" role="footer">
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