(function(){define(["angular","ace","ace/theme/chrome","ace/mode/dot","viz"],function(e){return e.module("controllers.HomeCtrl",[]).controller("HomeCtrl",["$scope","$timeout",function(){var e,t;return t=function(){return $("#editor").height($(window).height())},t(),$(window).on("resize",function(){return t()}),e=ace.edit("editor"),e.setTheme("ace/theme/chrome"),e.getSession().setMode("ace/mode/dot"),e.on("change",function(){var t,o;t=e.getValue();try{return o=Viz(t,"svg","dot"),$("#preview").html(o)}catch(n){}})}])})}).call(this);
//# sourceMappingURL=../../maps/controllers/HomeCtrl.js.map