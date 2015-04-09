function IngredientCtrl($scope, Session, Ingredients) {"use strict";

  $scope.user = Session.requestCurrentUser();
  $scope.ingredients = Ingredients.index();

  $scope.logout = function() {
    Session.logout();
  };

}
