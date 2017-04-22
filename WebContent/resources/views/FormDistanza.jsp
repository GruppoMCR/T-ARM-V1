<div ng-cloak>
  <md-content>
    <md-tabs md-dynamic-height md-border-bottom>
      <md-tab label="anagrafica" color="black">
        <md-content class="md-no-momentum">
          <h3 class="md-display-2">dati anagrafici</h3>
          <md-content class="md-no-momentum">
    <div>
      <md-input-container  layout="column">
        <label>nome</label>
        <input type="text" ng-model="nome">
      </md-input-container>

      <md-input-container  layout="column">
        <label>cognome</label>
        <input type="text" ng-model="cognome">
      </md-input-container>
      
      <md-input-container  layout="column">
        <label>Email</label>
        <input type="email" ng-model="email" >
      </md-input-container>
      
      <md-input-container  layout="column">
        <label>telefono</label>
        <input type="text" ng-model="telefono">
      </md-input-container>
      
      <md-input-container layout="column">
        <label>indirizzo</label>
        <input type="text" ng-model="indirizzo">
      </md-input-container>
        </md-content>
      </md-tab>
	   <md-tab label="donazione" style="color:red">
        <md-content class="md-no-momentum">
          <h1 class="md-display-2">scegli quanto vuoi donare</h1>
          <div>
  <md-input-container>
        <label>euro</label>
        <input type="number" min=0 ng-model="euro">
      </md-input-container>

      <md-input-container>
        <label>ogni quanti mesi?</label>
        <input type="number" max=12 min=0 ng-model="mesi">
      </md-input-container>
    </div>
        </md-content>
      </md-tab>