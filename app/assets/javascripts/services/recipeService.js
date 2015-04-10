angular.module('recipeService', ['ngRoute'])
  .factory('Recipes', function($resource) {
    return $resource('api/recipes.json', {}, {
      index: { method: 'GET', isArray: true },
      create: { method: 'POST' }
    });
  })
  .factory('Secure', function($resource) {
    return $resource('../recipe/:recipe_id.json', {}, {
      show: { method: 'GET' },
      update: { method: 'PUT' },
      destroy: { method: 'DELETE' }
    });
  });
