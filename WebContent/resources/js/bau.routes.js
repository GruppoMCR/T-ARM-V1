(function () {

  'use strict';

// Declare app level module which depends on filters, and services

angular.module('bauApp', ['bauApp.controllers', 'ngAnimate', 'ui.router', 'ngMaterial', 'ngAria', 'ngMessages'])
    .config(function ($mdThemingProvider) {
      $mdThemingProvider.theme('default')
        .primaryPalette('light-blue', {
          'default': '300'
        })
        .accentPalette('deep-orange', {
          'default': '500'
        });
    })
    .config(['$stateProvider', '$urlRouterProvider', '$logProvider', 
    function ($stateProvider, $urlRouterProvider) {

      $urlRouterProvider.otherwise("/");

      $stateProvider
        .state('home', {
          url: '/',
          views: {
            '@': {
              templateUrl: 'resources/views/home.jsp',
              controller: 'HomeCtrl as vm'
            }
          }
        })
        .state('home.adozioni', {
          url: 'adozioni',
          abstract: true
        })
        .state('home.adozioni.aDistanza', {
          url: '/a_distanza',
          views: {
            'content@home': {
              templateUrl: 'resources/views/adozioniADistanza.jsp'
// controller: 'AdozioniController'
            }
          }
        })
        .state('home.adozioni.portamiACasa', {
          url: '/portami_a_casa',
          views: {
            'content@home': {
              templateUrl: 'resources/views/adozioni.jsp',
              controller: 'AdozioniController'
            }
          }
        }).state('home.donazioni', {
            url: 'donazioni',
            abstract: true
        }).state('home.donazioni.materiale', {
            url: '/chi_siamo',
            views: {
              'content@home': {
                templateUrl: 'resources/views/donazioneMateriale.jsp'
// controller: 'AdozioniController'
              }
            }
          }).state('home.donazioni.denaro', {
              url: '/dove_siamo',
              views: {
                'content@home': {
                  templateUrl: 'resources/views/donazioneDenaro.jsp'
// controller: 'AdozioniController'
                }
              }
            }).state('home.info', {
            url: 'adozioni',
            abstract: true
        }).state('home.info.chiSiamo', {
            url: '/chi_siamo',
            views: {
              'content@home': {
                templateUrl: 'resources/views/chiSiamo.jsp'
// controller: 'AdozioniController'
              }
            }
          }).state('home.info.doveSiamo', {
              url: '/dove_siamo',
              views: {
                'content@home': {
                  templateUrl: 'resources/views/doveSiamo.jsp'
// controller: 'AdozioniController'
                }
              }
            })
        // stai dicendo che sulla pagina jsp hai un ui.sref="home.login"
        .state('home.login', {
        	url: '/login',
        	views: {
        		// il template e controller viene inietato nello stato home
        		'content@home': {
        			templateUrl: 'resources/views/login.jsp',
        			controller: 'LoginController'
        		}
        	}
        })
        .state('home.login.recuperaCredenziali', {
        	url: '/recuperaCredenziali',
        	views: {
        		// il template e controller viene inietato nello stato home
        		'content@home': {
        			templateUrl: 'resources/views/recuperaCredenziali.jsp',
        			controller: 'LoginController'
        		}
        	}
        })
        .state('home.login.registrazione', {
        	url: '/registrazione',
        	views: {
        		// il template e controller viene inietato nello stato home
        		'content@home': {
        			templateUrl: 'resources/views/registrazione.jsp',
        			controller: 'LoginController'
        		}
        	}
        })
        .state('home.contatti', {
        	url: '/contatti',
        	views: {
        		// il template e controller viene inietato nello stato home
        		'content@home': {
        			templateUrl: 'resources/views/contatti.jsp'
// controller: 'ContattiController'
        		}
        	}
        })
    }])
    // take all whitespace out of string
    .filter('nospace', function () {
      return function (value) {
        return (!value) ? '' : value.replace(/ /g, '');
      };
    })
    // replace uppercase to regular case
    .filter('humanizeDoc', function () {
      return function (doc) {
        if (!doc) return;
        if (doc.type === 'directive') {
          return doc.name.replace(/([A-Z])/g, function ($1) {
            return '-' + $1.toLowerCase();
          });
        }     
        return doc.label || doc.name;
      };
  });
})();