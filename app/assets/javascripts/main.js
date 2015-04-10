var culinaryAlchemist = angular.module('culinaryAlchemist', ['ngRoute', 'ngResource', 'noteService', 'recipeService'])

angular.module('culinaryAlchemist').config(['$routeProvider', function($routeProvider){
  $routeProvider
    .when('/', {
      templateUrl:'/home/index.html'
    })
    .when('/notes', {
      templateUrl:'/notes/index.html',
      controller: 'NoteCtrl'
    })
    .when('/recipes', {
      templateUrl:'/recipes/index.html',
      controller: 'RecipeCtrl'
    })
    .when('/ingredients', {
      templateUrl:'/ingredients/index.html',
      controller: 'IngredientCtrl'
    })
    .when('/users/sign_in', {
      templateUrl:'/users/login.html',
      controller: 'UsersCtrl'
    })
    .when('/users/sign_up', {
      templateUrl:'/users/register.html', controller: 'UsersCtrl'
    })
    .otherwise({
      templateUrl: '../templates/home.html',
      controller: 'HomeCtrl'
    })
}]);
