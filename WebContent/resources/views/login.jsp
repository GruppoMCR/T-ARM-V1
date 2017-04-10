<!-- <div class="dialogdemoBasicUsage" > -->
<md-content class="formLogin" id="popupContainer" layout="column" layout-padding layout-allign="center center">
<form name="loginForm" ng-submit="verificaCredenziali()" role="form">
	<md-toolbar>
          <div class="md-toolbar-tools">
            <h2><span>Login Form</span></h2>
          </div>
    </md-toolbar>
    <div layout="row">
	<md-input-container> <label>Username</label> <input
		type="text" required="" name="username" ng-model="username"
		minlength="5" maxlength="100">
	<div ng-messages="loginForm.username.$error">
		<div ng-message="required">Questo campo non dev'essere vuoto.</div>
	</div>
	</md-input-container>
	</div>
	<!-- TODO ADD TOOLTIP -->
<!-- 	<md-button class="md-fab"> -->
<!--             <md-tooltip -->
<!--               md-direction="{{demo.tipDirection}}"> -->
<!--               Insert Drive -->
<!--             </md-tooltip> -->
<!--             <md-icon -->
<!--               md-svg-src="img/icons/ic_insert_drive_file_24px.svg"> -->
<!--             </md-icon> -->
<!--           </md-button> -->
	<div layout="row">
	<md-input-container> <label>Password</label> <input
		type="password" required="" name="password" ng-model="password"
		minlength="8" maxlength="100">
	<div ng-messages="loginForm.password.$error">
		<div ng-message="required">Questo campo non dev'essere vuoto.</div>
	</div>
	</md-input-container>
	</div>
	<div class="utilLinks" layout="column" layout-padding>
	<span><a ui-sref-active="active" ui-sref="home.login.recuperaCredenziali">Username o password dimenticata?</a></span>
	
	<span><a ui-sref-active="active" ui-sref="home.login.registrazione">Non sei ancora registrato? Clicca qui</a></span>
	</div>
	<div layout="row">
		<md-button type="submit" class="md-raised md-primary">Accedi</md-button>
	</div>
	
	

</form>
</md-content>
<!-- </div> -->