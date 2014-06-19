myApp.controller('IndexController', ['$scope', 'BibliBdService', function($scope, BibliBdService){
	$scope.bds = BibliBdService.bds;
	console.log("test");
}]);