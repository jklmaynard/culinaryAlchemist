function RecipeCtrl($scope, Session, Recipes) {"use strict";

  $scope.user = Session.requestCurrentUser();
  $scope.recipes = Recipes.index();
  
}
