
angular.module('bauApp.controllers').controller('AdozioniController', function(CaniService, $scope, $log, $mdDialog){

	$log.debug('#Adozioni Controller entering#');
	$scope.orderList = "name";
//	$scope.animals = [
//		{nome:'Fabio', razza:'cane'}, 
//		{nome:'Leonardo',razza:'cane'}, 
//		{nome:'Thomas',razza:'cane'}, 
//		{nome:'Gabriele',razza:'cane'}, 
//		{nome:'Fabrizio',razza:'cane'}, 
//		{nome:'Eva Henger',razza:'cagna'}, 
//		{nome:'Cicciolina',razza:'cagna'}, 
//		{nome:'Jenna Have',razza:'cagna'}];
	
	$scope.animal={id:null, razza:'',pedegree:'', nome:'', pelo:'', sesso:'', dataNascita:'', descrizione:''};
	$scope.animals=[];
	$scope.status = '  ';
	$scope.customFullscreen = false;
	
	$scope.imagePath = 'resources/img/dog_avatar_0387.jpg';
	
	$scope.statusSearch=false;
	
	$scope.toggleShow = function(){
		$scope.statusSearch = $scope.statusSearch === false ? true:false;
	};
	
	racuperaTuttiICani();
	 
    function racuperaTuttiICani(){
    	CaniService.racuperaTuttiICani()
            .then(
            function(d) {
            	$scope.animals = d;
            },
            function(errResponse){
                console.error('Error while fetching dogs');
            }
        );
    }
	
	$scope.showContent = function(ev) {
		    $mdDialog.show({
		      controller: DialogController,
		      templateUrl: 'resources/views/templateAdozionePopUp.jsp',
		      parent: angular.element(document.body),
		      targetEvent: ev,
		      clickOutsideToClose:true,
		      fullscreen: $scope.customFullscreen // Only for -xs, -sm breakpoints.
		    })
		    .then(function(answer) {
		      $scope.status = 'You said the information was "' + answer + '".';
		    }, function() {
		      $scope.status = 'You cancelled the dialog.';
		    });
	};
	
	function DialogController($scope, $mdDialog) {
	    $scope.hide = function() {
	      $mdDialog.hide();
	    };

	    $scope.cancel = function() {
	      $mdDialog.cancel();
	    };

	    $scope.answer = function(answer) {
	      $mdDialog.hide(answer);
	    };
	  }
});