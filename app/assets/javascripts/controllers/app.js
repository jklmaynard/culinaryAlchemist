// culinaryAlchemist = angular.module('app', []);

angular.module('culinaryAlchemist').controller('AppCtrl', function ($scope, Session) {"use strict";
  $scope.$on('event:unauthorized', function(event) {
    console.log('unauthorized');
  });
  $scope.$on('event:authenticated', function(event) {
    console.log('authenticated');
  });

});
