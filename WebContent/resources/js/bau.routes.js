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
        .state('home.test', {
        	url: '/test',
        	views: {
        		// il template e controller viene inietato nello stato home
        		'content@home': {
        			templateUrl: 'resources/views/test.jsp',
        			controller: 'TestController as ctrl'
        		}
        	}
        })
//        .state('home.test', {
//          url: '/test',
//          views: {
//            'content@home': {
//              templateUrl: 'resources/views/test.jsp',
//              controller: 'LoginController as vm'
//            }
//          }
//        })
        .state('home.adozioni', {
          url: 'adozioni',
          abstract: true
        })
        .state('home.adozioni.info', {
          url: '/informazione_sulle_adozioni',
          views: {
            'content@home': {
              templateUrl: 'resources/views/info.jsp'
// controller: 'AdozioniController'
            }
          }
        })
        .state('home.adozioni.catalogo', {
          url: '/catalogo',
          views: {
            'content@home': {
              templateUrl: 'resources/views/catalogo.jsp',
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
controller: 'ContattiController'
        		}
        	}
        })
         .state('home.adozioni.catalogo.FormACasa', {
        	url: '/FormACasa',
        	views: {
        		// il template e controller viene inietato nello stato home
        		'content@home': {
        			templateUrl: 'resources/views/FormACasa.jsp'
        		}
        	}
        })
        .state('home.adozioni.catalogo.FormDistanza', {
        	url: '/FormDistanza',
        	views: {
        		// il template e controller viene inietato nello stato home
        		'content@home': {
        			templateUrl: 'resources/views/FormDistanza.jsp'
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