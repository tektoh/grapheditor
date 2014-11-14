require.config
  baseUrl: '/js'
  paths:
    'jquery': '//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.1/jquery.min'
    'bootstrap': '//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.0/js/bootstrap.min'
    'angular': '//cdnjs.cloudflare.com/ajax/libs/angular.js/1.3.0/angular.min'
    'angularRoute': '//cdnjs.cloudflare.com/ajax/libs/angular.js/1.3.0/angular-route.min'
    'ace': '//cdnjs.cloudflare.com/ajax/libs/ace/1.1.3/ace'
    'ace/theme/chrome': '//cdnjs.cloudflare.com/ajax/libs/ace/1.1.3/theme-chrome'
    'ace/mode/dot': '//cdnjs.cloudflare.com/ajax/libs/ace/1.1.3/mode-dot'
    'viz': 'vendors/mdaines/viz.js/viz'
  shim:
    'jquery':
      exports: '$'
    'bootstrap':
      deps: ['jquery']
    'angular':
      deps: ['jquery']
      exports: 'angular'
    'angularRoute':
      deps: ['angular']
    'ace':
      exports: 'ace'
    'ace/theme/chrome':
      deps: ['ace']
    'ace/mode/dot':
      deps: ['ace']
    'viz':
      exports:'Viz'

require [
  'angular'
  'app'
], (angular)->
  angular.bootstrap document, ['app']
