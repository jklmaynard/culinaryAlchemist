function notesCtrl ($scope) {
  $scope.note = initializer;
}

notesController.$inject = ['$scope', 'notesCtrl']
