angular.module('culinaryAlchemist').controller('RecipeCtrl', function RecipeCtrl($scope, Recipe) {
// function RecipeCtrl($scope, Session, Recipes) {"use strict";

  // $scope.user = Session.requestCurrentUser();
  $scope.recipes = Recipe.index();

});
