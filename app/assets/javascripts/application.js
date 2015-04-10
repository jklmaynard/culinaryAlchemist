// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require angular
//= require angular-resource
//= require main
//= require-rails-templates
//= require_tree .
//= require jquery.min
//= require services/sessionService
//= require services/noteService
//= require controllers/app
//= require controllers/users
//= require controllers/note

// angular.module('culinaryAlchemist', ['sessionService', 'noteService'])
//   .config(['$httpProvider', function($httpProvider){
//         $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content');
//
//         var interceptor = ['$location', '$rootScope', '$q', function($location, $rootScope, $q) {
//             function success(response) {
//                 return response
//             };
//
//             function error(response) {
//                 if (response.status == 401) {
//                     $rootScope.$broadcast('event:unauthorized');
//                     $location.path('/users/login');
//                     return response;
//                 };
//                 return $q.reject(response);
//             };
//
//             return function(promise) {
//                 return promise.then(success, error);
//             };
//         }];
//         $httpProvider.interceptors.push(interceptor);
//   }])
//
