angular.module('noteService', ['ngRoute', 'ngResource'])
  .factory('Notes', function($resource) {
    return $resource('api/notes.json', {}, {
      index: { method: 'GET', isArray: true },
      create: { method: 'POST' }
    });
  })
