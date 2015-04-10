angular.module('culinaryAlchemist').controller('NoteCtrl', function NoteCtrl($scope, Note) {

  // $scope.user = Session.requestCurrentUser();
  // debugger;
  $scope.notes = Note.index();
  $scope.note = Note.show();
  //
  // $scope.logout = function() {
  //   Session.logout()
  // }

});
