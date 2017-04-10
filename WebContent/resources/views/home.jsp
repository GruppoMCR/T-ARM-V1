<!-- <md-toolbar class="md-toolbar-tools topToolbar" -->
<!-- 	layout-align="space-between center"> <span> <a -->
<!-- 	href="#/">Project BAU</a> -->
<!-- </span> <span> <a href="#/">Home</a> <a href="#/chiSiamo" -->
<!-- 	ui-sref-active="active"><span>Chi siamo</span></a> <md-button -->
<!-- 		ui-sref-active="active" ui-sref="home.login"">Login</md-button> -->
<!-- </span> </md-toolbar> -->
<!-- <div class="container" layout="row" layout-padding flex> -->
<!-- 	<md-sidenav class="md-sidenav-left md-whiteframe-4dp" -->
<!-- 		md-is-locked-open="true"> <md-content role="navigation"> -->
<!-- 	<ul class="side-menu"> -->
<!-- 		<li ng-repeat="section in vm.menu.sections" class="parent-list-item" -->
<!-- 			ng-class="{'parentActive' : vm.isSectionSelected(section)}"> -->
<!-- 			<h2 class="menu-heading" ng-if="section.type === 'heading'" -->
<!-- 				id="heading_{{ section.name | nospace }}">{{section}}</h2> <menu-link -->
<!-- 				section="section" ng-if="section.type === 'link'"></menu-link> <menu-toggle -->
<!-- 				section="section" ng-if="section.type === 'toggle'"></menu-toggle> -->
<!-- 		</li> -->
<!-- 	</ul> -->
<!-- 	</md-content> </md-sidenav> -->
<!-- 	<md-content class="container" flex> -->
<!-- 	<div name="content" ui-view></div> -->
<!-- 	</md-content> -->
<!-- </div> -->

<!-- Main container -->
<div class="top_navbar md-whiteframe-15dp" layout-padding >
	<md-toolbar class="md-toolbar-tools" layout-align="space-between center"> 
		<div> 
			<a href="#/">Project BAU</a>
		</div>
		<div>
		
			<a class="topNav1" ui-sref-active="active" ui-sref="home">Home</a> 
			<a class="topNav2" ui-sref-active="active" ui-sref="home.contatti">Contatti</a> 
			<a class="topNav3" ui-sref-active="active" ui-sref="home.login">Login</a>
		</div> 
	</md-toolbar> 
</div>
<!-- <div class="containerSideAndContent" layout="row" flex> -->

<div class="containerSideMenu_Content md-whiteframe-15dp" layout="row" flex>
	<md-sidenav class="md-sidenav-left" md-is-locked-open="true"> 
		<md-content role="navigation">
			<ul class="side-menu">
				<li ng-repeat="section in vm.menu.sections" class="parent-list-item" ng-class="{'parentActive' : vm.isSectionSelected(section)}">
					<h2 class="menu-heading" ng-if="section.type === 'heading'"	id="heading_{{ section.name | nospace }}">{{section}}</h2> 
						<menu-link section="section" ng-if="section.type === 'link'"></menu-link> 
						<menu-toggle section="section" ng-if="section.type === 'toggle'"></menu-toggle>
				</li>
			</ul>
		</md-content> 
	</md-sidenav>
	<md-content class="container" flex>
	<div class="slidedown" name="content" ui-view></div>
	</md-content>
</div>
<!-- </div> -->
