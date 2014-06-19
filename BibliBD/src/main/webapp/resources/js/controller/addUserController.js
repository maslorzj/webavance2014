myApp.controller('AddUserController', ['$scope', '$http', function($scope, $http){

	$scope.initController = function() {
		$scope.user = {};
	};

	$scope.checkPasswords = function() {
		if($scope.user.password && $scope.user.password == $scope.user.passwordConf){
			$scope.passwordsChecked = true;
		} else {
			$scope.passwordsChecked = false;
		}
	};
}]);