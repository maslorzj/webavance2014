// used to call the PageBdService
myApp.controller('PageBdController', ['PageBdService', '$scope', function(PageBdService, $scope){
	$scope.PageBdService = PageBdService;
}]);