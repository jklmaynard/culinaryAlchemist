angular.module('recipeService', ['ngResource'])
  .factory('Recipe', function($resource) {
    return $resource('api/recipes.json', {}, {
      index: { method: 'GET', isArray: true },
      create: { method: 'POST' }
    });
  })
