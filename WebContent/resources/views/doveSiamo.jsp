
<md-content class="containerInfoDoveSiamo" layout-padding>
<md-toolbar>
<div class="md-toolbar-tools">
	<h1>Come raggiungerci</h1>
</div>
</md-toolbar> <!--     <md-content layout-padding layout-align="space-between center"> -->
<!--     	<div class="infoIndirizzo"> --> <!--     		<h4>Indirizzo</h4> -->
<!--     	</div> --> <!--     	<div class="googleMap"> --> <!--     		<h1>MAP GOOGLE</h1> -->
<!--     	</div> --> <!--     </md-content> --> <!-- 	<section class=""> -->
<!--       <md-subheader class="md-primary">Indirizzo</md-subheader> -->
<md-content layout="row"> <!--       <md-list layout-padding> -->
<!--         <md-list-item> --> <!--             <img ng-src="{{message.face}}" class="md-avatar" alt="{{message.who}}"> -->

<div class="infoDoveSiamo">
	<h1>Indirizzo</h1>
	<h3>Citta: XXX</h3>
	<h3>Via: Via Rossi, 69</h3>
	<h3>C.A.P.: 00111</h3>
</div>
<div flex class="googleMap" layout="column" layout-align="center center">
	<div id="map" style="width: 400px; height: 400px;"></div>
</div>
</md-content> </md-content>
<script>
function myMap() {
var mapOptions = {
    center: new google.maps.LatLng(51.5, -0.12),
    zoom: 10,
    mapTypeId: google.maps.MapTypeId.HYBRID
}
var map = new google.maps.Map(document.getElementById("map"), mapOptions);
}
</script>