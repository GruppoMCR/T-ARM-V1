
<md-content class="loginContent" layout="column" >
<form class="formLogin" name="loginForm" ng-submit="verificaCredenziali()" role="form" layout-padding layout-allign="center center">
	<md-toolbar>
          <div class="md-toolbar-tools" >
            <h2 class="headerText">Inserisci le tue credenziali di accesso</h2>
          </div>
    </md-toolbar>   

		<md-input-container> 
			<label>Username</label> 
			<input type="text" required name="username" ng-model="username"	minlength="5" maxlength="100">
				<div ng-messages="loginForm.username.$error">
					<div ng-message="required">Questo campo non dev'essere vuoto.</div>
				</div>
		</md-input-container>
		<md-input-container> 
			<label>Password</label> 
				<input type="password" required name="password" ng-model="password"	minlength="8" maxlength="100">
				<div ng-messages="loginForm.password.$error">
					<div ng-message="required">Questo campo non dev'essere vuoto.</div>
				</div>
		</md-input-container>
<!-- 	</div> -->
	<div class="utilLinks" layout="column" layout-padding>
		<a ui-sref-active="active" ui-sref="home.login.recuperaCredenziali">Username o password dimenticata?</a>
		<a ui-sref-active="active" ui-sref="home.login.registrazione">Non sei ancora registrato? Clicca qui</a>
	</div>
	
	<div>
		<md-button type="submit" class="md-raised md-primary">Accedi</md-button>
	</div>		
</form>
</md-content>
