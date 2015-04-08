@culinaryAlchemist = angular.module('culinaryAlchemist', ['ngRoute'])
@culinaryAlchemist.config(['$routeProvider', ($routeProvider) ->
  $routeProvider.
    when('/', {
      templateUrl: 'views/layouts/application.html.erb',
      controller: 'ApplicationCtrl'
    }).
    when('/sign_up', {
      templateUrl: 'views/devise/sessions/new.html.erb',
      controller: 'UsersCtrl'
    }).
    otherwise({
      templateUrl: '../templates/home.html',
      controller: 'HomeCtrl'
      })
])
