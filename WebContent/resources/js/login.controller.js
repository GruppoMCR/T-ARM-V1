
angular.module('bauApp.controllers').controller('LoginController', function($scope, $log, $mdDialog){

	$log.debug('#Login Controller entering#');

	$scope.submitRegistrazione=function(){
		$log.debug('submitRegistrazione()');
		console.log($scope.form);
	}

	$scope.verificaCredenziali = function() {
	    // Appending dialog to document.body to cover sidenav in docs app
	    // Modal dialogs should fully cover application
	    // to prevent interaction outside of dialog
		$log.debug('Username '+$scope.username+' e password'+$scope.password );
	}	

		    
		    
		if($scope.password == 'MiauMiau'){
	    $mdDialog.show(
	      $mdDialog.alert()
	        .parent(angular.element(document.querySelector('#popupContainer')))
	        .clickOutsideToClose(true)
	        .title('Login effettuato con successo')
//	        .textContent('You can specify some description text in here.')
	        .ariaLabel('Alert Dialog OK')
	        .ok('Bau Bau')
	        .targetEvent()
	    );
		} else {
			$mdDialog.show($mdDialog.alert()
			        .parent(angular.element(document.querySelector('#popupContainer')))
			        .clickOutsideToClose(true)
			        .title('Errore nel login')
			        .textContent('Vedi di verifica i dati')
			        .ariaLabel('Alert Dialog Demo')
			        .ok('Giargiana')
			        .targetEvent()
			    );
		}
	
//	$(window, document, undefined).ready(function() {
//
//		  $('input').blur(function() {
//		    var $this = $(this);
//		    if ($this.val())
//		      $this.addClass('used');
//		    else
//		      $this.removeClass('used');
//		  });
//
//		  var $ripples = $('.ripples');
//
//		  $ripples.on('click.Ripples', function(e) {
//
//		    var $this = $(this);
//		    var $offset = $this.parent().offset();
//		    var $circle = $this.find('.ripplesCircle');
//
//		    var x = e.pageX - $offset.left;
//		    var y = e.pageY - $offset.top;
//
//		    $circle.css({
//		      top: y + 'px',
//		      left: x + 'px'
//		    });
//
//		    $this.addClass('is-active');
//
//		  });
//
//		  $ripples.on('animationend webkitAnimationEnd mozAnimationEnd oanimationend MSAnimationEnd', function(e) {
//		  	$(this).removeClass('is-active');
//		  });
//
//		});
});