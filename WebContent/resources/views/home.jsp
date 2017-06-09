
<!-- <div id="mainLogo"> -->
<%-- 			<img src="<c:url value='/resources/img/main_logo.jpg'/>" /> --%>
<!-- 		</div>  -->
<div class="top_navbar md-whiteframe-15dp" layout-padding >
	<md-toolbar class="md-toolbar-tools" layout-align="space-between center"> 
		<div> 
 			<i class="material-icons">menu</i>
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
