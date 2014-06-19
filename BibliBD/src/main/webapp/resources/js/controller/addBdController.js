myApp.controller('AddBDController', ['$scope', '$http', function($scope, $http){
	
	$scope.initController = function() {
		$scope.newBd = {};
	};

	$scope.checkIDLength = function() {
		if($scope.newBd.id) {
			if($scope.newBd.id.length == 10 || $scope.newBd.id.length == 13) {
				$scope.idLengthChecked = true;
			} else {
				$scope.idLengthChecked = false;
			}
		}
	};

	//Submit the form
	$scope.sendNewBD = function() {
		if(!($scope.newBd.isbn && $scope.newBd.title && $scope.newBd.authorName  
			&& $scope.newBd.authorFirstname && $scope.newBd.illusName 
			&& $scope.newBd.illusFirstname && $scope.newBd.editor)) {
			$scope.ajaxError = "Veuillez remplir tous les champs obligatoires.";
		}
	};
}]);