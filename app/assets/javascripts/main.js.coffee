@culinaryAlchemist = angular.module('culinaryAlchemist', ['ngRoute'])
@culinaryAlchemist.config(['$routeProvider', ($routeProvider) ->
  $routeProvider.
    otherwise({
      templateUrl: '../templates/home.html',
      controller: 'HomeCtrl'
    })
])
