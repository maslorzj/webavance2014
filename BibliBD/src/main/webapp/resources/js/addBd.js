myApp.controller('AddBDController', ['$scope', '$http', function($scope, $http){

	$scope.initController = function() {
		$scope.newBd = {personnalFields:[]};
	};

	// Add personnal field
	$scope.addField = function() {
		if ($scope.newBd.personnalFields.length == 0) {
			$scope.newBd.personnalFields.push({});
		} else {
			var lastLine = $scope.newBd.personnalFields[$scope.newBd.personnalFields.length-1];
			if(!lastLine.key && !lastLine.value) {
				$scope.newBd.personnalFields.push({});
			}
		}
	};

	// delete personnal field selected
	$scope.deleteField = function(index) {
  		$scope.newBd.personnalFields.splice(index, 1);
	};

	// submit the form, redirect to list if success
	$scope.sendNewBD = function() {
		if($scope.newBd.isbn && $scope.newBd.title && $scope.newBd.authorName  
			&& $scope.newBd.authorFirstname && $scope.newBd.illustratorName 
			&& $scope.newBd.illustratorFirstname && $scope.newBd.editor && $scope.newBd.language) {
			$http({method: 'POST', data: JSON.stringify($scope.newBd), url: 'add'}).
			    success(function(data, status, headers, config) {
			      	if (data) {
			      		document.location.href = "list";
			      	} else {
			      		$scope.ajaxError = "Une erreur est survenue lors de l'enregistrement de la BD, essayez encore.";
			      	}
			    }).
			    error(function(data, status, headers, config) {
			      	$scope.ajaxError = "Une erreur est survenue lors de la connexion au serveur, essayez encore.";
			    }
			);
		} else {
			$scope.ajaxError = "Veuillez remplir tous les champs obligatoires.";
		}
	}
}]);