myApp.controller('BdController', ['$scope', '$http', 'BdService', function($scope, $http, BdService){

	// Initialize all variables
	$scope.initController = function() {
		$scope.getAvailableFilters(BdService.bds);
		$scope.filterOrders = ['editor', 'authorName', 'title']; // à load selon les choix de l'utilisateur
		$scope.reset();
	};

	$scope.reset = function() {
		$scope.currentOrder = 0;
		$scope.filters = {"$scope.filterOrders[$scope.currentOrder]":null};
		$scope.getAllBds(BdService.bds);
	};

	// select the following level of bds, depending on the filter chosen
	$scope.nextOrder = function(filter) {
		$scope.filters[$scope.filterOrders[$scope.currentOrder]] = filter;
		if($scope.currentOrder < $scope.filterOrders.length-1) {
			$scope.currentOrder++;
		}
		$scope.getAllBds($scope.bds);
	};

	// select the previous level of bds, depending on the filters chosen
	$scope.lastOrder = function() {
		$scope.currentOrder--;
		delete($scope.filters[$scope.filterOrders[$scope.currentOrder]]);
		$scope.getAllBds(BdService.bds);
	};

	// select all bds in the list depending the filters
	// bds corresponding to all the bds selected
	// currentPrinted corresponding to the current field of the bds selected, filtered by unique key
	$scope.getAllBds = function(bdList) {
		if($scope.currentOrder < $scope.filterOrders.length) {
			var currentPrinted = {};
			$scope.bds = [];
			$scope.currentPrinted = [];
			angular.forEach(bdList, function(bd){
				var bool = true;
				angular.forEach($scope.filters, function(value, key){
					if(key != "$$hashKey" && value != null && bd[key] != value) {
						bool = false;
					}
				});
				if (bool) {
					if(currentPrinted[bd[$scope.filterOrders[$scope.currentOrder]]] == null){
						currentPrinted[bd[$scope.filterOrders[$scope.currentOrder]]] = bd[$scope.filterOrders[$scope.currentOrder]];
					}
					$scope.bds.push(bd);
				};
			});
			angular.forEach(currentPrinted, function(value, key){
				$scope.currentPrinted.push(value);
			});
		}
	};

	// delete all the filter already in use from the ng-repeat
	$scope.checkAvailableFilters = function(index) {
    	return function(input) {
    		var bool = true;
    		angular.forEach($scope.filterOrders, function(value, key){
    			if(value == input && value != $scope.filterOrders[index]){
    				bool = false;
	    		}
    		});	
		    return bool;
	  	};
  	};

  	// change one of the current filter
  	$scope.changeFilter = function() {
  		$scope.reset();
  	};

  	// add a new filter, selecting automatically the first filter available
  	$scope.addNewFilter = function() {
  		for (var i = 0; i < $scope.filtersAvailable.length; i++) {
			var isAlreadyAdded = false;
  			for (var j = 0; j < $scope.filterOrders.length; j++) {
  				if($scope.filtersAvailable[i] == $scope.filterOrders[j]) {
  					isAlreadyAdded = true;
  					break;
  				}
  			};
  			if (!isAlreadyAdded) {
  				$scope.filterOrders.push($scope.filtersAvailable[i]);
  				break;
  			};
  		};
  	};

  	$scope.deleteFilter = function(index) {
  		$scope.filterOrders.splice(index,1);
  	};

  	// select all the possible filters from a bd, including personnal keys
	$scope.getAvailableFilters = function(bdList) {
		/*$scope.filtersAvailable = [];
		var availableList = {};
		for (var i = 0; i < bdList.length; i++) {
			angular.forEach(bdList[i], function(value, key){
				if(!availableList[key]) {
					availableList[key] = true;
				}
			});
		};
		angular.forEach(availableList, function(value, key){
			if(key != "$$hashKey") {
				$scope.filtersAvailable.push(key);					
			}
		});*/
		$scope.filtersAvailable = ['isbn', 'editor', 'title', 'authorName', 'authorFirstname', 'illusName', 'illusFirstname', 'language'];
	};
}]);