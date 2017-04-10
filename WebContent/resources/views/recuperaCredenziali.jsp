<md-content class="recuperaCredenzialiForm" layout="column" layout-padding>
<form name="recuperaCredenzialiForm">
	<md-toolbar>
         
            <h2><span>Recupero Credenziali</span></h2>
          
    </md-toolbar>
    <div layout="row">
	<md-input-container> <label>Nome completo</label> <input
		type="text" required="" name="nomeCompleto" ng-model="recupero.nomeCompleto"
		minlength="5" maxlength="100">
	<div ng-messages="recuperaCredenzialiForm.nomeCompleto.$error">
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
	<md-input-container> <label>Email</label> <input
		type="email" required name="emailRecupero" ng-model="recupero.email"
		required minlength="10" maxlength="100" ng-pattern="/^.+@.+\..+$/">
	<div ng-messages="recuperaCredenzialiForm.emailRecupero.$error">
		<div ng-message="required">Questo campo non dev'essere vuoto.</div>
	</div>
	</md-input-container>
	</div>
	<div layout="row">
		<md-button type="submit" class="md-raised md-primary">Invia</md-button>
	</div>
</form>
</md-content>