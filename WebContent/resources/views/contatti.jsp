<div class="test">
	<md-toolbar>
	<div class="md-toolbar-tools"">
		<h2>
			<span>Chiamaci o mandaci un fax</span>
		</h2>
	</div>
	</md-toolbar>
	<section id="contattiTelefonici">
		<div>
			<label> Telefono:{{contatti.telefono}} </label>
			<md-button type="submit" class="md-raised md-primary">modifica</md-button>
		</div>

		<div>
			<label> Fax: {{contatti.fax}} </label>
			<md-button type="submit" class="md-raised md-primary">modifica</md-button>
		</div>
	</section>
	<md-toolbar>
	<div class="md-toolbar-tools">
		<h2>
			<span>Mandaci un messaggio via Mail | inserisci il tuo nome, mail e il messaggio che ci vuoi inviare</span>
		</h2>
	</div>
	</md-toolbar>
	<section id="contact-us">
		<div class="container">
			<md-content class="md-no-momentum">
			<form name="contattaciForm" ng-submit="contattaci()" role="form">

				<md-input-container layout="column"> <label>Nome</label>
				<input type="text" name="nome" ng-model="nome" required=""
					minlength="3" maxlength="100">
				<div ng-messages="contattaciForm.nome.$error">
					<div ng-message="required">Compila questo campo</div>
				</div>
				</md-input-container>

				<md-input-container layout="column"> <label>Email</label>
				<input type="email" required="" name="email" ng-model="email" minlength="10" maxlength="100"
					ng-pattern="/^.+@.+\..+$/">
				<div ng-messages="contattaciForm.email.$error">
					<div ng-message-exp="['required', 'minlength', 'maxlength', 'pattern']">
            il campo deve essere compreso da 10 a 100 caratteri e deve essere scritto con questo formato "example@mail.com"
          </div>
				</div>
				</md-input-container>

				<md-input-container layout="column"> <label>Oggetto</label>
				<input type="oggetto" ng-model="oggetto" name="oggetto" minlength="3" maxlength="100" required=""> 
				<div ng-messages="contattaciForm.oggetto.$error">
					<div ng-message="required">Compila questo campo</div>
				</div></md-input-container>

				<md-input-container class="md-block" layout="column">
				<label>Messaggio</label> <textarea ng-model="messaggio" name="messaggio" required=""
					md-maxlength="500" rows="5" md-select-on-focus></textarea>
					<div ng-messages="contattaciForm.messaggio.$error">
					<div ng-message="required">Compila questo campo</div>
				</div>
					
					 </md-input-container>

				<md-button type="submit" class="md-raised md-primary">Invia</md-button>
			</md-content>
			<form>
		</div>
	</section>
</div>