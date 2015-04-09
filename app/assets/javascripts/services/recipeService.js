angular.module('recipeService', ['ngRoute'])
  .factory('Recipes', function($resource) {
    return $resource('api/recipe.json', {}, {
      index: { method: 'GET', isArray: true },
      create: { method: 'POST' }
    });
  })
  .factory('Secure', function($resource) {
    return $resource('/api/recipe/:recipe_id.json', {}, {
      show: { method: 'GET' },
      update: { method: 'PUT' },
      destroy: { method: 'DELETE' }
    });
  });
