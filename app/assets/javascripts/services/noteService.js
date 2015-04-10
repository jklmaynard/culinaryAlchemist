angular.module('noteService', ['ngResource'])
  .factory('Note', function($resource) {
    return $resource('api/notes.json', {}, {
      index: { method: 'GET', isArray: true },
      create: { method: 'POST' }
    });
  })
