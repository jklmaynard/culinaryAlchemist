var culinaryAlchemist = angular.module('culinaryAlchemist', ['ngRoute', 'ngResource', 'noteService'])

angular.module('culinaryAlchemist').config(['$routeProvider', function($routeProvider){
  $routeProvider
    .when('/', {
      templateUrl:'/home/index.html'
    })
    .when('/notes', {
      templateUrl:'/notes/index.html',
      controller: 'NoteCtrl'
    })
    .when('/users/login', {
      templateUrl:'/users/login.html',
      controller: 'UsersCtrl'
    })
    .when('/users/register', {
      templateUrl:'/users/register.html', controller:UsersCtrl
    })
    .otherwise({
      templateUrl: '../templates/home.html',
      controller: 'HomeCtrl'
    })
}]);
