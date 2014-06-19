angular.module('app_car', ['ui.bootstrap']);
function CarouselDemoCtrl($scope){
  $scope.myInterval = 3000;
  $scope.slides = [
    {
      image: '../../resources/img/couv/bd5.jpg'
    },
    {
      image: '../../resources/img/couv/bd2.jpg'
    },
    {
      image: '../../resources/img/couv/bd1.jpg'
    },
    {
      image: '../../resources/img/couv/bd3.jpg'
    },
    {
      image: '../../resources/img/couv/bd4.jpg'
    }
  ];
}