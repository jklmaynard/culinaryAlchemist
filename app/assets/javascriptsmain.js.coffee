@culinaryAlchemist = angular.module('culinaryAlchemist', ['ngRoute'])
@culinaryAlchemist.config(['$routeProvider', ($routeProvider) ->
  $routeProvider.
    otherwise({
      templateUrl: '../users/:id',
      controller: 'users_controller.rb'
    })
])
