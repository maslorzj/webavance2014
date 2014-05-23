myApp.controller('TestController', ['$scope', '$http', 'TestService', function($scope, $http, TestService){

	$scope.initController = function() {
		$scope.filterOrders = ['editor', 'authorName', 'title'];
		$scope.filters = {editor:null};
		$scope.currentOrder = 0;
		$scope.currentPrinted = {};
		$scope.bds = TestService.bds;
		$scope.maxTableSize = 12;
		$scope.getBds($scope.bds);
		$scope.getBdsForTree();
		$scope.getBdsForTable();
	};

	$scope.resetSearchField = function() 
	{
		$scope.search = {};
	};

	$scope.nextOrder = function(filter) {
		$scope.filters[$scope.filterOrders[$scope.currentOrder]] = filter;
		if($scope.currentOrder < $scope.filterOrders.length-1) {
			$scope.currentOrder++;
		}
		$scope.getBds($scope.bds);
	};

	$scope.lastOrder = function() {
		$scope.currentOrder--;
		delete($scope.filters[$scope.filterOrders[$scope.currentOrder]]);
		$scope.getBds(TestService.bds);
	};

	$scope.getBds = function() {
		$scope.currentPrinted = [];
		angular.forEach($scope.currentPrinted, function(value, key){
			$scope.currentPrinted.push(value);
		});
	};

	$scope.getBds = function(bdList) {
		if($scope.currentOrder < $scope.filterOrders.length) {
			$scope.bds = [];
			$scope.currentPrinted = {};
			angular.forEach(bdList, function(bd){
				var bool = true;
				angular.forEach($scope.filters, function(value, key){
					if(key != "$$hashKey" && value != null && bd[key] != value) {
						bool = false;
					}
				});
				if (bool) {
					if($scope.currentPrinted[bd[$scope.filterOrders[$scope.currentOrder]]] == null){
						$scope.currentPrinted[bd[$scope.filterOrders[$scope.currentOrder]]] = bd[$scope.filterOrders[$scope.currentOrder]];
					}
					$scope.bds.push(bd);
				};
			});
		}
	};

	$scope.test = function(input) {
		console.log(input);
	};
}]);