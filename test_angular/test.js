myApp.controller('TestController', ['$scope', '$http', 'TestService', function($scope, $http, TestService){
	$scope.TestService = TestService;
}]);