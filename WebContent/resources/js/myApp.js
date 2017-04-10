var bau = angular.module('myApp', [ 'ngRoute', 'ngMaterial', 'ngMessages']);

bau.config(function($routeProvider) {
	$routeProvider.when('/contatti_email', {
		templateUrl : 'resources/views/contatti_email.jsp',
		controller: 'contattiEmailController'
	}).when('/home_page', {
		templateUrl : 'resources/views/home_page.jsp'
	}).when('/login', {
		templateUrl : 'resources/views/login.jsp',
	    controller:'loginController'
	}).when('/adozioni', {
		templateUrl : 'resources/views/adozioni.jsp',
		controller: 'adozioniController'
	}).otherwise({
		redirectTo : '/'
	});
});

bau.controller('loginController', function($scope, $log){
	$log.debug('LOGIN CONTROLLER ENTER');
	$(window, document, undefined)
		.ready(function() {
			$('input').blur(function() {
				var $this = $(this);
				if ($this.val())
					$this.addClass('used');
				else
					$this.removeClass('used');
		});
	var $ripples = $('.ripples');
	$ripples.on('click.Ripples', function(e) {
		var $this = $(this);
		var $offset = $this.parent().offset();
		var $circle = $this.find('.ripplesCircle');
		var x = e.pageX - $offset.left;
		var y = e.pageY - $offset.top;
		$circle.css({
			top : y + 'px',
			left : x + 'px'
		});
	$this.addClass('is-active');
	});
	$ripples.on('animationend webkitAnimationEnd mozAnimationEnd oanimationend MSAnimationEnd',	function(e) {
		$(this).removeClass('is-active');
		});
	});
});

bau.controller('adozioniController', function($scope, $log, $mdDialog){
//    var tabs = [
//        { title: 'Catalogo', content: "Tabs will become paginated if there isn't enough room for them."},
//        { title: 'Adozione', content: "You can swipe left and right on a mobile device to change tabs."},
//        { title: 'Test', content: "You can bind the selected tab via the selected attribute on the md-tabs element."}        
//      ],
//      selected = null,
//      previous = null;
//  $scope.tabs = tabs;
//  $scope.selectedIndex = 0;
//  $scope.$watch('selectedIndex', function(current, old){
//    previous = selected;
//    selected = tabs[current];
//    if ( old + 1 && (old != current)) $log.debug('Goodbye ' + previous.title + '!');
//    if ( current + 1 )                $log.debug('Hello ' + selected.title + '!');
//  });
//  $scope.addTab = function (title, view) {
//    view = view || title + " Content View";
//    tabs.push({ title: title, content: view, disabled: false});
//  };
//  $scope.removeTab = function (tab) {
//    var index = tabs.indexOf(tab);
//    tabs.splice(index, 1);
//  };
	$scope.orderList = "name";
	$scope.animals = [
		{nome:'Fabio', razza:'cane'}, 
		{nome:'Leonardo',razza:'cane'}, 
		{nome:'Thomas',razza:'cane'}, 
		{nome:'Gabriele',razza:'cane'}, 
		{nome:'Fabrizio',razza:'cane'}, 
		{nome:'Eva Henger',razza:'cagna'}, 
		{nome:'Cicciolina',razza:'cagna'}, 
		{nome:'Jenna Have',razza:'cagna'}];
	
	$scope.imagePath = 'resources/img/dog_avatar_0387.jpg';
	
	$scope.statusSearch=false;
	$scope.toggleShow = function(){
		$scope.statusSearch = $scope.statusSearch === false ? true:false;
	};
	
	$scope.status = '  ';
	$scope.customFullscreen = false;	  
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

bau.controller('homeController', function($scope, $timeout, $mdSidenav){
	$scope.toggleLeft = buildToggler('left');
    $scope.toggleRight = buildToggler('right');

    function buildToggler(componentId) {
      return function() {
        $mdSidenav(componentId).toggle();
      };
    }
    
});
