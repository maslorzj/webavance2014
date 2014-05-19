myApp.controller('TestController', ['$scope', '$http', 'TestService', function($scope, $http, TestService){
	$scope.TestService = TestService;
	$scope.search = {};
	$scope.searchType = 'title';
	$scope.filterOrders = ['editor', 'authorName', 'title'];
	$scope.filters = {editor:null};
	$scope.currentOrder = 'editor';
	$scope.currentPrinted = {};


	$scope.resetSearchField = function() 
	{
		$scope.search = {};
	};

	$scope.nextOrder = function(filter) {
		var currentIndex = 0;
		angular.forEach($scope.filterOrders, function(order, index){
			if(order == $scope.currentOrder) {
				currentIndex = index;
			}
		});
		$scope.filters[$scope.currentOrder] = filter;
		if(currentIndex < $scope.filterOrders.length - 1) {
			$scope.currentOrder = $scope.filterOrders[currentIndex+1];
		}
	};

	$scope.filterTree = function() {
    	return function(bd) {
    		var bool = true;
    		angular.forEach($scope.filters, function(value, filter){
	    		if(filter !== "$$hashKey" && value !== null && bd[filter] != value) {
		      		bool = false;
	    		}
    		});
    		return bool;
    	};
  	};
}]);