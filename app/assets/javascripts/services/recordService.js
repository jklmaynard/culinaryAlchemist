angular.module('recordService', ['ngRoute'])
  .factory('Records', function($resource) {
    return $resource('api/record.json', {}, {
      index: { method: 'GET', isArray: true },
      create: { method: 'POST' }
    });
  })
  .factory('Secure', function($resource) {
    return $resource('/api/record/:record_id.json', {}, {
      show: { method: 'GET' },
      update: { method: 'PUT' },
      destroy: { method: 'DELETE' }
    });
  });
