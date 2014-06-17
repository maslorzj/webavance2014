myApp.controller('AddBDController', ['$scope', '$http', function($scope, $http){

	$scope.initController = function() {
		$scope.newBd = {};
	};

	$scope.checkIDLength = function() {
		if($scope.newBd.id.length == 10 || $scope.newBd.id.length == 13) {
			$scope.idLengthChecked = true;
		} else {
			$scope.idLengthChecked = false;
		}
	};
}]);