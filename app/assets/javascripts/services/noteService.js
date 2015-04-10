angular.module('noteService', ['ngResource'])
  .factory('Note', function($resource) {
    return $resource('api/notes.json',
    {
      id: "@id"
    },
    {
      index: { method: 'GET', isArray: true },
      create: { method: 'POST' },
      show: { method: 'GET', isArray: true }
    });
  })
