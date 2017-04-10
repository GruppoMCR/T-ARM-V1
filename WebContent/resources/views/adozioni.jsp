<div class="gridCardList" >
	<div layout="row">
		<h3>Elenco animali</h3>
		<span flex></span>
<!-- <select ng-model="orderList" ng-show="$statusSearch"> -->
<!--     <option value="name">By name</option> -->
<!--     <option value="-age">Newest</option> -->
<!--     <option value="age">Oldest</option> -->
<!-- </select> -->
		<md-input-container class="md-block" md-no-float>
            <input ng-model="nome" type="text" placeholder="Filtro..." ng-show="statusSearch">
        </md-input-container>
		<md-button class="md-fab md-accent" aria-label="Search" ng-click="toggleShow()"> 
			<md-tooltip>Filtra l'elenco inserendo una parola chiave</md-tooltip> 
			<md-icon class="material-icons md-light"> search</md-icon>
		</md-button>
		
	</div>
	<div layout="row" layout-wrap>

		<div class="listAnimals" layout="column" ng-repeat="animale in animals | filter:nome" flex="33">
			<md-card> 
			<img ng-src="{{imagePath}}" class="md-card-image" alt="user avatar"> 
			<md-card-content>
				<div layout="row" layout-align="start center" flex="33">
					Nome: {{animale.nome}} <br>
				Razza: {{animale.razza}} <br>
				</div>
				<div class="dialogBoxIcons" layout="row" layout-align="space-around center">
					<md-button flex="10">
<!-- 				<div> -->
					<md-icon class="material-icons md-light md-8"> favorite</md-icon>
<!-- 					<p class="textDogCards">Mi piace</p> -->
<!-- 				</div> -->
				</md-button>
				<!-- 			<md-divider></md-divider> -->
				<md-button ng-click="showContent($event)" flex="10">
<!-- 				<div> -->
					<md-icon class="material-icons md-light md-8"> zoom_in</md-icon>
<!-- 					<p class="textDogCards">Visualizza</p> -->
<!-- 				</div> -->
				</md-button>
				<!-- 			<md-divider></md-divider> -->
				<md-button>
<!-- 				<div> -->
					<md-icon class="material-icons md-light md-8" flex="10"> forward</md-icon>
<!-- 					<p class="textDogCards">Condividi</p> -->
<!-- 				</div> -->
				</md-button>
				
				</div>
				
<!-- 				ADMIN BUTTONS -->
			<div layout="row" layout-align="space-around center" ng-show="false">
				<md-button> <md-icon
					class="material-icons md-light md-8"> delete</md-icon> </md-button>
				<md-button ng-click="showContent($event)"> <md-icon
					class="material-icons md-light md-8"> modify</md-icon> </md-button>
				<!-- 			<md-divider></md-divider> -->
				<md-button>
			</div>
			</md-card-content>
<!-- 			<div class="animalCardsAdoption" layout="row" layout-wrap> -->
				
<!-- 			</div> -->
			</md-card>
		</div>
	</div>
</div>

