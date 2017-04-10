(function(){
  'use strict';
  angular.module('bau.services', []);
  angular.module('bauApp.controllers', ['bau.directives']);
  angular.module('bau.directives', ['bau.services']);
})(); 