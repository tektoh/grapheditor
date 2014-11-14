define [
  'angular'
  'ace'
  'ace/theme/chrome'
  'ace/mode/dot'
  'viz'
], (angular)->
  angular.module 'controllers.HomeCtrl', []
    .controller 'HomeCtrl', ['$scope', '$timeout', ($scope, $timeout)->

      setHeight = ->
        $("#editor").height($(window).height())

      setHeight()
      $(window).on 'resize', -> setHeight()

      editor = ace.edit 'editor'
      editor.setTheme 'ace/theme/chrome'
      editor.getSession().setMode 'ace/mode/dot'

      editor.on 'change', (e)->
        text = editor.getValue()
        try
          viz = Viz text, 'svg', 'dot'
          $('#preview').html viz

    ]
