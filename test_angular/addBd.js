myApp.controller('AddBDController', ['$scope', '$http', function($scope, $http){

	$scope.initController = function() {
		$scope.newBd = {personnalFields:[]};
	};

	$scope.addField = function() {
		if ($scope.newBd.personnalFields.length == 0) {
			$scope.newBd.personnalFields.push({});
		} else {
			var lastLine = $scope.newBd.personnalFields[$scope.newBd.personnalFields.length-1];
			if(lastLine.key != null && lastLine.value != null && lastLine.key != "" && lastLine.value != "") {
				$scope.newBd.personnalFields.push({});
			}
		}
	};

	$scope.deleteField = function(index) {
  		$scope.newBd.personnalFields.splice(index, 1);
	};

	$scope.submit = function() {
		console.log($scope.newBd);	
	};
}]);