<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- CSS -->
<link href="<c:url value='/resources/css/app.css'/>" rel="stylesheet"></link>
<link href="<c:url value='/resources/css/sidebar.css'/>" rel="stylesheet"></link>
<link href="<c:url value='/resources/css/forms.css'/>" rel="stylesheet"></link>
<link href="<c:url value='/resources/css/top_navbar_theme.css'/>" rel="stylesheet"></link>
<%-- <link href="<c:url value='/resources/css/test.css'/>" rel="stylesheet"></link> --%>
<%-- <link href="<c:url value='/resources/css/test2.css'/>" rel="stylesheet"></link> --%>
<%-- <link href="<c:url value='/resources/css/test3.css'/>" rel="stylesheet"></link> --%>
<link href="<c:url value='/resources/css/bootstrap.css'/>" rel="stylesheet"></link>
<link href="<c:url value='/resources/font-awesome/css/font-awesome.min.css'/>" rel="stylesheet"></link>
<link rel="stylesheet" href="http://ajax.googleapis.com/ajax/libs/angular_material/1.1.0/angular-material.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<!-- <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,400italic"> -->
<link href="https://fonts.googleapis.com/css?family=Permanent+Marker" rel="stylesheet">
<!-- <link rel="stylesheet" href="https://cdn.gitcdn.xyz/cdn/angular/bower-material/v1.0.1-master-a687bfc/angular-material.css"> -->
<link rel="stylesheet" href="https://storage.googleapis.com/code.getmdl.io/1.0.6/material.indigo-blue.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

<!-- JS -->
<script src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY&callback=myMap"></script>
<script data-require="angular.js@1.5.8" data-semver="1.5.8"	src="https://code.angularjs.org/1.5.8/angular.js"></script>
<!-- <script data-require="angular-route@1.5.8" data-semver="1.5.8" src="https://code.angularjs.org/1.5.8/angular-route.js"></script> -->
<script data-require="angular-ui-router@0.3.1" data-semver="0.3.1" src="//cdnjs.cloudflare.com/ajax/libs/angular-ui-router/0.3.1/angular-ui-router.min.js"></script>
<%-- <script src="<c:url value='/resources/js/myApp.js'/>" type="text/javascript"></script> --%>

<%-- <script src="<c:url value='/resources/js/modernizr.custom.js'/>" type="text/javascript"></script> --%>
<%-- <script src="<c:url value='/resources/js/dummydata.js'/>" type="text/javascript"></script> --%>
<%-- <script src="<c:url value='/resources/js/classie.js'/>" type="text/javascript"></script> --%>
<%-- <script src="<c:url value='/resources/js/main.js'/>" type="text/javascript"></script> --%>

<script src="<c:url value='/resources/js/bau.modules.js'/>" type="text/javascript"></script>
<script src="<c:url value='/resources/js/bau.routes.js'/>" type="text/javascript"></script>
<script src="<c:url value='/resources/js/home.controller.js'/>" type="text/javascript"></script>
<script src="<c:url value='/resources/js/adozioni.controller.js'/>" type="text/javascript"></script>
<script src="<c:url value='/resources/js/login.controller.js'/>" type="text/javascript"></script>
<script src="<c:url value='/resources/js/menu.service.js'/>" type="text/javascript"></script>
<script src="<c:url value='/resources/js/menu_toggle.directive.js'/>" type="text/javascript"></script>
<script src="<c:url value='/resources/js/menulink.directive.js'/>" type="text/javascript"></script>
<script src="<c:url value='/resources/js/contatti.controller.js'/>" type="text/javascript"></script>
<<<<<<< HEAD
<script src="<c:url value='/resources/js/user_service.js'/>" type="text/javascript"></script>
=======
>>>>>>> branch 'master' of https://github.com/GruppoMCR/T-ARM-V1.git
<%-- <script src="<c:url value='/resources/js/test.js'/>" type="text/javascript"></script> --%>


<script src="<c:url value='/resources/js/bootstrap.js'/>" type="text/javascript"></script>
<script src="<c:url value='/resources/js/jquery.js'/>" type="text/javascript"></script>

<!-- <script personalizzati-->
<script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.5.5/angular-animate.min.js"></script>
<script	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.5.5/angular-aria.min.js"></script>
<script	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.5.5/angular-messages.min.js"></script>
<!-- Angular Material Library -->
<script	src="http://ajax.googleapis.com/ajax/libs/angular_material/1.1.0/angular-material.min.js"></script>

<title>BAU4YOU</title>
</head>
<!-- <body layout="column" ng-app="bauApp" ng-cloak> -->
<body ng-app="bauApp">

<!-- <div class="container" layout="row" flex> -->
<!-- 	<md-sidenav class="main-sidenav md-whiteframe-4dp" md-is-locked-open="true"> -->
<!-- 	    <md-content role="navigation"> -->
<!--       		<ul class="side-menu"> -->
<!--         		<li ng-repeat="section in vm.menu.sections" class="parent-list-item" ng-class="{'parentActive' : vm.isSectionSelected(section)}"> -->
<!--           			<h2 class="menu-heading" ng-if="section.type === 'heading'" id="heading_{{ section.name | nospace }}">{{section}}</h2> -->
<!--           			<menu-link section="section" ng-if="section.type === 'link'"></menu-link> -->
<!--           			<menu-toggle section="section" ng-if="section.type === 'toggle'"></menu-toggle> -->
<!--         		</li> -->
<!--       		</ul> -->
<!--     	</md-content> -->
<!-- 	</md-sidenav> -->
<!--   <md-content class="container" flex> -->
<!--     <div name="content" ui-view></div> -->
<!--   </md-content> -->

<!-- </div> -->

	<md-content>
		<div class="mainBauContent" layout="column" ui-view></div>
	</md-content>
</body>
</html>