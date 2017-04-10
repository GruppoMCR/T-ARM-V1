
<md-content class="formRegistrazione" layout="row" layout-padding>
<form name="formRegistrazione" ng-submit="submitRegistrazione()" role="form">
	<md-toolbar>
	<div class="md-toolbar-tools">
		<h2>
			<span>Modulo di Registrazione</span>
		</h2>
	</div>
	</md-toolbar>
	<div layout="column" layout-align="space-between center">
		<md-input-container> <label>Nome</label>
		<input type="text" required="" name="nome" ng-model="reg.nome" minlength="2" maxlength="100">
		<div ng-messages="formRegistrazione.nome.$error">
			<div ng-message="required">Questo campo non dev'essere vuoto.</div>
		</div>
		</md-input-container>
		<md-input-container> <label>Cognome</label>
		<input type="text" required="" name="nome"
			ng-model="reg.cognome" minlength="2" maxlength="100">
		<div ng-messages="formRegistrazione.cognome.$error">
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
	<div layout="column">
		<md-input-container> 
			<label>Email</label> 
			<input type="email" required name="emailRgistrazione" ng-model="reg.email"	required minlength="10" maxlength="100" ng-pattern="/^.+@.+\..+$/">
		<div ng-messages="formRegistrazione.emailRgistrazione.$error">
			<div ng-message="required">Questo campo non dev'essere vuoto.</div>
		</div>
		</md-input-container>
		<md-input-container> 
			<label>Ripeti email</label> 
			<input type="email" required name="ripetiEmailRgistrazione" ng-model="reg.ripetiEmail" required minlength="10" maxlength="100" ng-pattern="/^.+@.+\..+$/">
		<div ng-messages="formRegistrazione.ripetiEmailRgistrazione.$error">
			<div ng-message="required">Questo campo non dev'essere vuoto.</div>
		</div>
		</md-input-container>
		<!-- CREA DIRETTIVA CUSTOM -->
<!-- 		<div ng-show="form.confirm_password.$error.required"> -->
<!--         Field required!</div> -->
<!--       <md-content ng-show="verificaTest()"><p>Non sono uguali</p></md-content> -->
	<div layout="column">
		<md-input-container> 
			<label>Password</label> 
			<input type="password" required name="passwordRgistrazione" ng-model="reg.password"	required minlength="8" maxlength="100" >
		<div ng-messages="formRegistrazione.passwordRgistrazione.$error">
			<div ng-message="required">Questo campo non dev'essere vuoto.</div>
		</div>
		</md-input-container>
		<md-input-container> 
			<label>Ripeti email</label> 
			<input type="password" required name="ripetiPasswordRgistrazione" ng-model="reg.ripetiPassword" required minlength="10" maxlength="100">
		<div ng-messages="formRegistrazione.ripetiPasswordRgistrazione.$error">
			<div ng-message="required">Questo campo non dev'essere vuoto.</div>
		</div>
		</md-input-container>
		<!-- CREA DIRETTIVA CUSTOM -->
<!-- 		<div ng-show="formRegistrazione.confirm_password.$error.required"> -->
<!--         Field required!</div> -->
<!--       <div ng-show="formRegistrazione.confirm_password.$error.passwordVerify"> -->
<!--         Fields are not equal!</div> -->
	</div>
	<div layout="row">
		<md-button type="submit" class="md-raised md-primary">Registra</md-button>
		<md-button type="reset" class="md-raised md-primary">Cancella tutto</md-button>
	</div>
</form>
</md-content>