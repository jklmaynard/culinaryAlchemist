// function IngredientCtrl($scope, Session, Ingredients) {"use strict";

  // $scope.user = Session.requestCurrentUser();

angular.module('culinaryAlchemist').controller('IngredientCtrl', function IngredientCtrl($scope, Ingredient) {
  $scope.ingredients = Ingredient.index();

});
