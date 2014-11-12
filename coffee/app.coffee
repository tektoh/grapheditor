define [
  'angular'
  'angularRoute'
  'controllers/HomeCtrl'
], (angular)->
  app = angular.module 'app', [
    'ngRoute'
    'controllers.HomeCtrl'
  ]
  app.config ['$routeProvider', ($routeProvider)->
    $routeProvider.when '/', {
      templateUrl: '/html/home.html'
      controller: 'HomeCtrl'
    }
  ]
