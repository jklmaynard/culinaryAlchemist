angular.module('app.recipeApp').controller("RecipeCtrl", [
  '$scope',
  ($scope)->
    console.log 'RecipeCtrl running'

    $scope.recipeValue = "Hello angular and rails"
  ])
