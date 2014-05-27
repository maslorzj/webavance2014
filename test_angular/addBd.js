myApp.controller('AddBDController', ['$scope', '$http', function($scope, $http){

	$scope.initController = function() {
		$scope.newBd = {personnalFields:[]};
	};

	$scope.addField = function() {
		if($scope.newBd.personnalFields.length < 5) {
			if ($scope.newBd.personnalFields.length == 0) {
				$scope.newBd.personnalFields.push({});
			} else {
				var lastLine = $scope.newBd.personnalFields[$scope.newBd.personnalFields.length-1];
				if(lastLine.key && lastLine.value) {
					$scope.newBd.personnalFields.push({});
				} else {
					$scope.newFieldError = "You must fill the value of the last fields to continue."
				}
			}	
		} else {
			$scope.newFieldError = "You can not have more than 5 personnal fields."
		}
	};

	$scope.deleteField = function(index) {
  		$scope.newBd.personnalFields.splice(index, 1);
  		$scope.newFieldError = null;
	};

	$scope.submitKeyUp = function() {
		if(event.keyCode == 13){
			$scope.submit();
      	}
	}

	$scope.submit = function() {
		$http({
		    url: "add",
		    method: "POST",
		    data: {newBd:JSON.stringify($scope.newBd)}
		}).success(function(data, status, headers, config) {
		    $scope.data = data;
		}).error(function(data, status, headers, config) {
		    $scope.status = status;
		});
	};
}]);