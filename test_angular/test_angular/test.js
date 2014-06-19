 'use strict';
  
  /* Controllers */
var nomApp = angular.module('nomApp', []);

nomApp.controller('TestController', ['$scope', function($scope) {
    $scope.spice = 'very';

    $scope.chiliSpicy = function() {
        $scope.jambon = 'chili';
    };

    $scope.functionAlert = function() {
		console.log("patate");
		alert("En effet, tu es un " + this.jambon);
	}
}]);