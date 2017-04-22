<div ng-cloak>
  <md-content>
    <md-tabs md-dynamic-height md-border-bottom >
      <md-tab label="anagrafica">
        <md-content class="md-no-momentum">
          <h1 class="md-display-2">dati anagrafici</h1>
          <md-content class="md-no-momentum">
    <div>
      <md-input-container layout="column">
        <label>nome</label>
        <input type="text" ng-model="nome">
      </md-input-container>

      <md-input-container layout="column">
        <label>cognome</label>
        <input type="text" ng-model="cognome">
      </md-input-container>
      
      <md-input-container layout="column">
        <label>Email</label>
        <input type="email" ng-model="email">
      </md-input-container>
      
      <md-input-container layout="column">
        <label>telefono</label>
        <input type="text" ng-model="telefono">
      </md-input-container>
      
      <md-input-container layout="column">
        <label>indirizzo</label>
        <input type="text" ng-model="indirizzo">
      </md-input-container>
    </div>
  </md-content>
        </md-content>
      </md-tab>
	   <md-tab label="questionario" style="color:red">
        <md-content class="md-no-momentum">
          <h1 class="md-display-2">Compila il questionario</h1>
          <div>
  <md-input-container layout="column">
        <label>Quanti anni avete?</label>
        <input type="number" ng-model="anni">
      </md-input-container>

      <md-input-container layout="column">
        <label>Perchè volete adottare un cane?</label>
        <input type="text" ng-model="adottare">
      </md-input-container>
      
      <md-input-container layout="column">
        <label>Quanti componenti avete in famiglia?</label>
        <input type="number" ng-model="componenti">
      </md-input-container>
      
      <md-input-container layout="column">
        <label>Avete bambini?</label>
        <input type="text" ng-model="bambini">
      </md-input-container>
      
      <md-input-container layout="column">
        <label>Avete gia avuto cani?</label>
        <input type="text"ng-model="avutoAltriCani">
      </md-input-container>
      
      <md-input-container layout="column">
        <label>Come organizzereste le vostre vacanze avendo un cane?</label>
        <input type="text" ng-model="vacanze">
      </md-input-container>
      
      <md-input-container layout="column">
        <label>Avete il giardino?</label>
        <input type="text" ng-model="giardino">
      </md-input-container>
      
      <md-input-container layout="column">
        <label>Avete gia altri animali con voi a casa?</label>
        <input type="text" ng-model="animaliCasa">
      </md-input-container>
    </div>
        </md-content>
      </md-tab>