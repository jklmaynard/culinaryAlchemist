function notesController ($scope, initializer) {
  $scope.note = initializer;
}

notesController.$inject = ['$scope', 'notesAppInitializer']
