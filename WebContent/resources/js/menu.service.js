
angular
		.module('bau.services')
		.factory(
				'menu',
				[
						'$location',
						'$rootScope',
						function($location) {

							var sections = [ {
								name : 'Test BAU Master',
								state : 'home.test',
								type : 'link'
							} ];

							sections.push({
								name : 'Adozioni',
								type : 'toggle',
								pages : [ {
									name : 'catalogo',
									type : 'link',
									state : 'home.adozioni.catalogo',
									icon : 'fa fa-paw'
								}, {
									name : 'Come funziona',
									state : 'home.adozioni.info',
									type : 'link',
									icon : 'fa fa-info'
								} ]
							});

							sections.push({
								name : 'Donazioni',
								type : 'toggle',
								pages : [ {
									name : 'Materiale',
									type : 'link',
									state : 'donazioni.materiale',
//									icon : 'fa fa-group'
								}, {
									name : 'Denaro',
									state : 'donazioni.denaro',
									type : 'link',
//									icon : 'fa fa-map-marker'
								} ]
							});
//							sections.push({
//								name : 'Volontariato',
//								type : 'toggle',
//								pages : [ {
//									name : 'Come funziona',
//									type : 'link',
//									state : 'volontariato.comeFunziona',
//									icon : 'fa fa-group'
//								}, {
//									name : 'Partecipa',
//									state : 'volontariato.Partecipa',
//									type : 'link',
////									icon : 'fa fa-map-marker'
//								} ]
//							});
							sections.push({
								name : 'Informazioni',
								type : 'toggle',
								pages : [ {
									name : 'Chi siamo',
									type : 'link',
									state : 'home.info.chiSiamo',
//									icon : 'fa fa-group'
								}, {
									name : 'Dove siamo',
									state : 'home.info.doveSiamo',
									type : 'link',
//									icon : 'fa fa-map-marker'
								} ]
							});
							var self;

							return self = {
								sections : sections,

								toggleSelectSection : function(section) {
									self.openedSection = (self.openedSection === section ? null
											: section);
								},
								isSectionSelected : function(section) {
									return self.openedSection === section;
								},

								selectPage : function(section, page) {
									page && page.url
											&& $location.path(page.url);
									self.currentSection = section;
									self.currentPage = page;
								}
							};

							function sortByHumanName(a, b) {
								return (a.humanName < b.humanName) ? -1
										: (a.humanName > b.humanName) ? 1 : 0;
							}

						} ]);
//	.factory('UserService', ['$http', '$q', function($http, $q){
 
//    var REST_SERVICE_URI = 'http://localhost:8080/T-ARM-V1/user/';
// 
//    var factory = {
//        fetchAllUsers: fetchAllUsers,
//        createUser: createUser,
//        updateUser:updateUser,
//        deleteUser:deleteUser
//    };
// 
//    return factory;
// 
//    function fetchAllUsers() {
//        var deferred = $q.defer();
//        $http.get(REST_SERVICE_URI)
//            .then(
//            function (response) {
//                deferred.resolve(response.data);
//            },
//            function(errResponse){
//                console.error('Error while fetching Users');
//                deferred.reject(errResponse);
//            }
//        );
//        return deferred.promise;
//    }
// 
//    function createUser(user) {
//        var deferred = $q.defer();
//        $http.post(REST_SERVICE_URI, user)
//            .then(
//            function (response) {
//                deferred.resolve(response.data);
//            },
//            function(errResponse){
//                console.error('Error while creating User');
//                deferred.reject(errResponse);
//            }
//        );
//        return deferred.promise;
//    }
// 
// 
//    function updateUser(user, id) {
//        var deferred = $q.defer();
//        $http.put(REST_SERVICE_URI+id, user)
//            .then(
//            function (response) {
//                deferred.resolve(response.data);
//            },
//            function(errResponse){
//                console.error('Error while updating User');
//                deferred.reject(errResponse);
//            }
//        );
//        return deferred.promise;
//    }
// 
//    function deleteUser(id) {
//        var deferred = $q.defer();
//        $http.delete(REST_SERVICE_URI+id)
//            .then(
//            function (response) {
//                deferred.resolve(response.data);
//            },
//            function(errResponse){
//                console.error('Error while deleting User');
//                deferred.reject(errResponse);
//            }
//        );
//        return deferred.promise;
//    }
 
//}]);
