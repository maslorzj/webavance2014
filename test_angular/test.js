myApp.controller('TestController', ['$scope', '$http', 'TestService', function($scope, $http, TestService){
	$scope.TestService = TestService;
	$scope.search = {};
	$scope.searchType = 'title';
	$scope.orders = ['title', 'editor'];

	$scope.resetSearchField = function() 
	{
		$scope.search = {};
	};

	$scope.test = function(input) {
		console.log(input);
	};
}]);