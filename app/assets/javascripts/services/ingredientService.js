angular.module('ingredientService', ['ngResource'])
  .factory('Ingredient', function($resource) {
    return $resource('api/ingredients.json', {}, {
      index: { method: 'GET', isArray: true },
      create: { method: 'POST' }
    });
  })
