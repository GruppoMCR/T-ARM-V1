<script>
$('#formACasa').click(function() {
	
    $('#templateAdozionePopUp').modal('hide');
});

</script>
<md-dialog ng-controller="AdozioniController" class="md-dialog-popUp"
	aria-label="Mango (Fruit)">
<form>
	<md-toolbar>
	<div class="md-toolbar-tools">
		<h2>cane</h2>
		<span flex></span>
		<md-button class="md-icon-button" ng-click="cancel()"> <md-icon
			class="material-icons">close</md-icon> </md-button>
	</div>
	</md-toolbar>

	<md-dialog-content>
	<div class="md-dialog-content">
		<h2>Using .md-dialog-content class that sets the padding as the
			spec</h2>
		<p>LORET IPSUM</p>
	</div>
	</md-dialog-content>

	
	<div class="btn-toolbar" role="toolbar"	aria-label="Toolbar with button groups">
		<div class="btn-group mr-2" role="group">
			<md-button class="md-accent md-raised md-hue-1"
				ui-sref-active="active" ui-sref="home.adozioni.catalogo.FormACasa" id="formACasa">Portalo
			a casa </md-button>
		</div>
		<div class="btn-group mr-2" role="group">
			<md-button class="md-accent md-raised md-hue-1"
				ui-sref-active="active"
				ui-sref="home.adozioni.catalogo.FormDistanza">Adottalo a
			distanza a casa </md-button>
		</div>
	</div>
	</md-button> </md-dialog-actions>
</form>
</md-dialog>