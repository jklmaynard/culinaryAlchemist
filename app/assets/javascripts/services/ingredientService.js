angular.module('ingredientService', ['ngRoute', 'ngResource'])
  .factory('Ingredients', function($resource) {
    return $resource('api/ingredients.json', {}, {
      index: { method: 'GET', isArray: true },
      create: { method: 'POST' }
    });
  })
  .factory('Secure', function($resource) {
    return $resource('../ingredient/:ingredient_id.json', {}, {
      show: { method: 'GET' },
      update: { method: 'PUT' },
      destroy: { method: 'DELETE' }
    });
  });
