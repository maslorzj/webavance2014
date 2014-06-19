myApp.controller('IndexController', ['$scope', 'BibliBdService', function($scope, BibliBdService){
	$scope.bds = BibliBdService.bds;
	$scope.isConnected = isConnected;
}]);