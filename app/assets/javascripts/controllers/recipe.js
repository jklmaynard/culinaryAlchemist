function RecipeCtrl($scope, Session, Recipes)
{"use strict";
//
//   $scope.user = Session.requestCurrentUser();
//   $scope.recipes = Recipes.index();
//
//   $scope.logout = function() {
//     Session.logout();
//   };
//

this.recipe.controller('RecipeCtrl', [
  '$scope', '$location', '$http', function($scope, $location, $http) {
    $scope.recipes = [];
    $http.get('./api/recipe.json').success(function(data) {
      return $scope.recipes = data;
    });
    return $scope.viewRecipe = function(id) {
      return $location.url("/recipes/" + id);
    };
  }
]);
}
