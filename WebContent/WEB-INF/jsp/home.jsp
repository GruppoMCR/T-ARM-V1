<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html lang="en">
<head>
	
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Tutela&Adozione Randagi del Meridione</title>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.7/angular.min.js"></script>
	<spring:url value="/resources/img/dog.png" var="imgDog" />
	<spring:url value="/resources/css/landing-page.css" var="coreCss" />
	<spring:url value="/resources/css/bootstrap.min.css" var="bootstrapCss" />
	<spring:url value="/resources/font-awesome/css/font-awesome.min.css" var="awesomeFont" />
	<link rel="SHORTCUT ICON" href="${imgDog}"/>
	<link href="${bootstrapCss}" rel="stylesheet" />
	<link href="${coreCss}" rel="stylesheet" />
    <link href="${awesomeFont}" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic" rel="stylesheet" type="text/css">
    
</head>
<body>
    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top topnav" role="navigation">
        <div class="container topnav">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                
               	<a class="navbar-brand topnav" href="#" style="font-size:x-large;">
              	 	TEST
               	</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                	<li>
                        <a href="#services" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Servizi <span class="caret"></span></a>
                        <ul class="dropdown-menu">
					    <li><a href="#" id="linkCercaPadrone">In cerca di padrone</a></li>
					    <li><a href="#">Adottati</a></li>
					    <li><a href="#">Adozioni a distanza</a></li>
					    <li role="separator" class="divider"></li>
					    <li><a href="#">Dona il tuo tempo</a></li>
					    <li><a href="#">Operazioni di supporto</a></li>
					  </ul>
                    </li>
                    <li>
                        <a href="#about">Chi siamo</a>
                    </li>
                    <li>
                        <a href="#services">L'iniziativa</a>
                    </li>
                    <li>
                        <a href="#contact">Contatti</a>
                    </li>
                    <li>
                        <a href="#donations">Donazioni</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
    <!-- Header -->
    <a name="about"></a>
    <div class="intro-header">
        <div class="container">

            <div class="row">
                <div class="col-lg-12">
                    <div class="intro-message">
                        <h1>Pagina principale</h1>
                        <h3>Prova prova prova, test</h3>
                        <hr class="intro-divider">
                        <ul class="list-inline intro-social-buttons">
                            <li>
                                <a href="https://twitter.com/SBootstrap" class="btn btn-default btn-lg"><i class="fa fa-twitter fa-fw"></i> <span class="network-name">Twitter</span></a>
                            </li>
                            <li>
                                <a href="#" class="btn btn-default btn-lg"><i class="fa fa-linkedin fa-fw"></i> <span class="network-name">Linkedin</span></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>

        </div>
        <!-- /.container -->
    </div>
    <!-- /.intro-header -->

    <!-- Page Content -->

<!-- 	<a name="services"></a> -->
<!--     <div class="content-section-a" id="cercaPadrone"> -->

<!--         <div class="container"> -->
<!--             <div class="row"> -->
<!--                 <div class="col-lg-5 col-sm-6"> -->
<!--                     <hr class="section-heading-spacer"> -->
<!--                     <div class="clearfix"></div> -->
<!--                     <h2 class="section-heading">In cerca di padrone</h2> -->
<!--                     <p class="lead">Accedi alla galleria schede per trovare il cagnolino che fa per te! <a target="_blank" href="http://google.it/"> GALLERIA </a></p> -->
<!--                 </div> -->
<!--                 <div class="col-lg-5 col-lg-offset-2 col-sm-6"> -->
<%--                 	<spring:url value="/resources/img/cane2.jpg" var="imgHome" /> --%>
<%--                     <img class="img-responsive" src="${imgHome}" alt=""> --%>
<!--                 </div> -->
<!--             </div> -->
<!--         </div> -->
<!--         /.container -->
<!--     </div> -->
<!--     /.content-section-a -->

<!--     <div class="content-section-b" id="adottaloDiv"> -->

<!--         <div class="container"> -->

<!--             <div class="row"> -->
<!--                 <div class="col-lg-5 col-lg-offset-1 col-sm-push-6  col-sm-6"> -->
<!--                     <hr class="section-heading-spacer"> -->
<!--                     <div class="clearfix"></div> -->
<!--                     <h2 class="section-heading">L'iniziativa</h2> -->
<!--                     <p class="lead">Il progetto "Tutela&Adozione Randagi del Meridione" nasce da un'idea di Gruppo MCR per sostenere cani randagi e trovatelli nel Meridione (e non solo) della penisola Italiana</p> -->
<!--                 </div> -->
<!--                 <div class="col-lg-5 col-sm-pull-6  col-sm-6"> -->
<%--                     <spring:url value="/resources/img/dog.png" var="imgDog" /> --%>
<%--                     <img class="img-responsive" src="${imgDog}" alt=""> --%>
<!--                 </div> -->
<!--             </div> -->

<!--         </div> -->
<!--         /.container -->

<!--     </div> -->
<!--     /.content-section-b -->

<!--     <div class="content-section-a"> -->

<!--         <div class="container"> -->

<!--             <div class="row"> -->
<!--                 <div class="col-lg-5 col-sm-6"> -->
<!--                     <hr class="section-heading-spacer"> -->
<!--                     <div class="clearfix"></div> -->
<!--                     <h2 class="section-heading">Questa &egrave; una <br>Prova</h2> -->
<!--                     <p class="lead">Prova prova prova<a target="_blank" href="http://www.google.com/fonts">Testo libero</a> prova <a target="_blank" href="http://fontawesome.io">prova</a>.</p> -->
<!--                 </div> -->
<!--                 <div class="col-lg-5 col-lg-offset-2 col-sm-6"> -->
<%--                 	<spring:url value="/resources/img/phones.png" var="imgPhone" /> --%>
<%--                     <img class="img-responsive" src="${imgPhone}" alt=""> --%>
<!--                 </div> -->
<!--             </div> -->

<!--         </div> -->
<!--         /.container -->

<!--     </div> -->
<!--     /.content-section-a -->

<!-- 	<a  name="contact"></a> -->
<!--     <div class="banner"> -->

<!--         <div class="container"> -->

<!--             <div class="row"> -->
<!--                 <div class="col-lg-6"> -->
<!--                     <h2>TEST:</h2> -->
<!--                 </div> -->
<!--                 <div class="col-lg-6"> -->
<!--                     <ul class="list-inline banner-social-buttons"> -->
<!--                         <li> -->
<!--                             <a href="https://twitter.com/SBootstrap" class="btn btn-default btn-lg"><i class="fa fa-twitter fa-fw"></i> <span class="network-name">Twitter</span></a> -->
<!--                         </li> -->
<!--                        <li> -->
<!--                             <a href="#" class="btn btn-default btn-lg"><i class="fa fa-linkedin fa-fw"></i> <span class="network-name">Linkedin</span></a> -->
<!--                         </li> -->
<!--                     </ul> -->
<!--                 </div> -->
<!--             </div> -->

<!--         </div> -->
<!--         /.container -->

<!--     </div> -->
    <!-- /.banner -->

    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <ul class="list-inline">
                        <li>
                            <a href="#" id="scrollToTop">Torna s&ugrave;</a>
                        </li>
                        <li class="footer-menu-divider">&sdot;</li>
                        <li>
                            <a href="#about">Chi siamo</a>
                        </li>
                        <li class="footer-menu-divider">&sdot;</li>
                        <li>
                            <a href="#services">L'iniziativa</a>
                        </li>
                        <li class="footer-menu-divider">&sdot;</li>
                        <li>
                            <a href="#contact">Contatti</a>
                        </li>
                    </ul>
                    <p class="copyright text-muted small">Copyright <a href="http://www.gruppomcr.com"> GRUPPO MCR S.p.a </a> 2017. All Rights Reserved</p>
                </div>
            </div>
        </div>
    </footer>

	<spring:url value="/resources/js/jquery.js" var="coreJs" />
	<spring:url value="/resources/js/bootstrap.min.js" var="bootstrapJs" />
	
    <!-- jQuery -->
    <script src="${coreJs}"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="${bootstrapJs}"></script>

</body>
<script>
$('#scrollToTop').click(function(){
	$('html, body').animate({scrollTop : 0},800);
	return false;
});
$('.dropdown-toggle').click(function() {
    $(this).next('.dropdown-menu').fadeToggle(500);
});
$('.dropdown-toggle').blur(function() {
    $(this).next('.dropdown-menu').fadeOut("slow");
});
$('#linkCercaPadrone').click(function(){
	$('html, body').animate({scrollTop: $("#cercaPadrone").offset().top},'slow');
	return false;
});
</script>
</html>