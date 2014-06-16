myApp.controller('AddUserController', ['$scope', '$http', function($scope, $http){

	$scope.initController = function() {
		$scope.user = {};
	};

	// submit the form, redirect to list if success
	$scope.sendNewUser = function() {
		console.log("test");
		if($scope.user.pseudo && $scope.user.password && $scope.user.email && $scope.passwordsChecked) {
			$http({method: 'POST', data: JSON.stringify($scope.user), url: 'addUser'}).
			    success(function(data, status, headers, config) {
			      	if (data) {
			      		document.location.href = "list";
			      	} else {
			      		$scope.ajaxError = "Une erreur est survenue lors de l'enregistrement de l'ustilisateur, essayez encore.";
			      	}
			    }).
			    error(function(data, status, headers, config) {
			      	$scope.ajaxError = "Une erreur est survenue lors de la connexion au serveur, essayez encore.";
			    }
			);
		} else {
			$scope.ajaxError = "Veuillez remplir tous les champs.";
		}
	}

	$scope.checkPasswords = function() {
		if($scope.user.password && $scope.user.password == $scope.user.passwordConf){
			$scope.passwordsChecked = true;
		} else {
			$scope.passwordsChecked = false;
		}
	};
}]);