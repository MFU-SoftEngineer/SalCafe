<!DOCTYPE html>
<html>
<head>
<title>Home</title>
<!--mobile apps-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Espresso Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--mobile apps-->
<!--Custom Theme files -->
<link rel="stylesheet" href="css/easyhelper.min.css">
<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="css/style.css" type="text/css" rel="stylesheet" media="all"> 
<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
<!-- //Custom Theme files -->
<!-- js -->
<script src="js/jquery-3.3.1.min.js"></script>
<!-- //js -->
<!--web-fonts-->
<link href='https://fonts.googleapis.com/css?family=Aladin' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<!--//web-fonts-->
<!--animate-->
<link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
<script src="js/wow.min.js"></script>
	<script>
		 new WOW().init();
	</script>
<!--//end-animate-->
<!-- start-smoth-scrolling-->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script src="js/es6-shim.min.js"></script>
<script src="js/jquery.transit.min.js"></script>
<script src="js/easyhelper.min.js"></script>
<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
			});
		});
	 	
		function checkLogin(){
			<%
			if(request.getSession().getAttribute("userName") == null){
				%>
				Helper.ui.dialog({
					title: "Please Login First",
					content: "Do you already is a member?",
					yesCallback: function () {
						window.location.href = "login.jsp";
					},
					noCallback: function () {
						window.location.href = "register.jsp";
					}
				});
				<%
			}else{
				response.sendRedirect("popular.jsp");
			}
		%>	
		}
</script>
<!--//end-smoth-scrolling-->
</head>
<body>

	<!--banner-->
	<div class="banner">
	    <div class="bnr-img">
			<img class="wow fadeInLeftBig animated" data-wow-delay=".5s" src="images/a.png" alt=""/>
		</div>
		<div class="top-nav">
			<span class="menu"><img src="images/menu-icon.png" alt=""/></span>
			<ul class="nav1 menu-list">
				<li class="menu-item menu-item-current"><a class="menu-link" href="index.jsp">HOME</a></li>
				<li class="menu-item"><a class="menu-link" href="popular.jsp">POPULAR</a></li>
				<li class="menu-item"><a class="menu-link" href="menu.jsp">MENU</a></li>
			</ul>
			<div class="clearfix"> </div>
			<!-- script-for-menu -->
			 <script>
			   $( "span.menu" ).click(function() {
				 $( "ul.nav1" ).slideToggle( 300, function() {
				 // Animation complete.
				  });
				 });
			</script>
			<!-- /script-for-menu -->
		</div>
		<div class="social-icons wow zoomIn animated" data-wow-delay=".5s">
			<ul>
				<li><a href="#"> </a></li>
				<li><a href="#" class="fb"> </a></li>
				<li><a href="#" class="in"> </a></li>
			</ul>
		</div>
		<div class="banner-text">
			<h1 class="wow fadeInDown animated" data-wow-delay=".5s"><a href="index.html">SAL Cafe Shop</a> </h1>
			<p class="wow zoomIn animated" data-wow-delay=".5s">The Most Popular , Cost-efficient , Delicious Cafe Shop near MFU University </p> 
			<div class="pop-up">
				<a class="book popup-with-zoom-anim button-isi zoomIn animated" data-wow-delay=".5s" onclick="checkLogin()" >Book Now</a>
				<div id="small-dialog" class="mfp-hide book-form" style="display:none;">
					<form>
						<label>Date :</label>
						<input type="date">
						<div class="form-left">
							<label>City :</label>
							<input type="text" value="City" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'City';}" required="">
						</div>
						<div class="form-right">
							<label>Time :</label>
							<input type="time">
						</div>
						<div class="clearfix"> </div>
						<label>Contact Info :</label>
						<input type="text" value="Contact Info" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Contact';}" required="">
						<input type="submit" value="Order Now">
					</form>
				</div>
				<!-- pop-up-box -->
				<script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
				<!--//pop-up-box -->
				<script>
					$(document).ready(function() {
						$('.popup-with-zoom-anim').magnificPopup({
							type: 'inline',
							fixedContentPos: false,
							fixedBgPos: true,
							overflowY: 'auto',
							closeBtnInside: true,
							preloader: false,
							midClick: true,
							removalDelay: 300,
							mainClass: 'my-mfp-zoom-in'
						});														
					});
				</script>
			</div>
			<img class="wow zoomIn animated" data-wow-delay=".5s" src="images/img1.png" alt=""/>
		</div>
		<div class="clearfix"> </div>
	</div>
	<!--//banner-->
	<!--welcome-->
	<div class="welcome">
		<div class="container">
			<div class="col-md-7 welcome-left">
				<h4 class="title wow fadeInLeft animated" data-wow-delay=".5s">Welcome! </h4>
				<h3 class="title1 wow fadeInLeft animated" data-wow-delay=".5s">THE BEST CHOICE <br>FOR COFFEE IS <span>Cal</span>Cafe </h3>
			</div>
			<div class="col-md-5 welcome-right wow fadeInRightBig animated" data-wow-delay=".5s">
				<h5>There are many variations of coffees are available</h5>
				<p class="data">Coffee is a stimulant that has many effects on the human body. 
				It can diuretic, stimulate the central nervous system and respiratory system, 
				expand blood vessels, accelerate the heartbeat, strengthen the strength of striated muscles, 
				and relieve brain and muscle fatigue.</p>
			</div>
			<span class="bg-text">W</span>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!--//welcome-->
	<!--services-->
	<div class="services">
		<div class="container">
			<div class="col-md-5 services-right">
				<h4 class="title wow fadeInRight animated" data-wow-delay=".5s">Services</h4>
				<h3 class="title1 wow fadeInRight animated" data-wow-delay=".5s">Other men live to eat, <br>while <span>I </span>eat to live.</h3>
				<p class="data wow fadeInRight animated" data-wow-delay=".5s">That afternoon, the cup of coffee, 
				let me understand: we who are not who, you are waiting for the coffee to add sugar, 
				I am looking forward to someone who will share the bitter coffee alone.</p>
			</div>
			<div class="col-md-7 services-left">
				<div class="col-md-4 services-grid wow fadeInDown animated" data-wow-delay=".5s">
					<span class="glyphicon glyphicon-heart effect-1" aria-hidden="true"></span>
					<h5>Service</h5>
					<p>Customer is GOD service concept</p>
				</div>
				<div class="col-md-4 services-grid wow fadeInDown animated" data-wow-delay=".5s">
					<span class="glyphicon glyphicon-list-alt effect-1" aria-hidden="true"></span>
					<h5>Menu</h5>
					<p>Update and innovate regularly</p>
				</div>
				<div class="col-md-4 services-grid wow fadeInDown animated" data-wow-delay=".5s">
					<span class="glyphicon glyphicon-leaf effect-1" aria-hidden="true"></span>
					<h5>Food Material</h5>
					<p>Only choose the freshest , healthiest ingredients</p>
				</div>
				<div class="col-md-4 services-grid bottom-grids wow fadeInUp animated" data-wow-delay=".5s">
					<span class="glyphicon glyphicon-globe effect-1" aria-hidden="true"></span>
					<h5>Take-out</h5>
					<p>Up to 5km free deliver . over 5km only charge 10THB</p>
				</div>
				<div class="col-md-4 services-grid bottom-grids wow fadeInUp animated" data-wow-delay=".5s">
					<span class="glyphicon glyphicon-cutlery effect-1" aria-hidden="true"></span>
					<h5>Tableware</h5>
					<p>Replace regularly and disinfect immediately after use</p>
				</div>
				<div class="col-md-4 services-grid bottom-grids wow fadeInUp animated" data-wow-delay=".5s">
					<span class="glyphicon glyphicon-th-large effect-1" aria-hidden="true"></span>
					<h5>Other</h5>
					<p>Any questions are welcome</p>
				</div>
				<div class="clearfix"> </div>
			</div>
			<span class="bg-text bg-right">S</span>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!--//services-->
	<!--popular-->
	<div class="popular">
		<div class="container">
			<div class="col-md-7 popular-left">
				<h4 class="title wow fadeInLeft animated" data-wow-delay=".5s">Popular Flavors </h4>
				<h3 class="title1 wow fadeInLeft animated" data-wow-delay=".5s">Most<br>Popular <span>Today</span> Sold</h3>
				<p class="data wow fadeInLeft animated" data-wow-delay=".5s"></p>
			</div>
			<div class="col-md-5 popular-right wow fadeInRight animated" data-wow-delay=".5s">
				<div class="col-md-6 popular-grids">
					<img src="images/img2.jpg" class="img-responsive zoom-img" alt="">
				</div>
				<div class="col-md-6 popular-grids">
					<img src="images/img3.jpg" class="img-responsive zoom-img" alt="">
				</div>
				<div class="col-md-6 popular-grids">
					<img src="images/img4.jpg" class="img-responsive zoom-img" alt="">
				</div>
				<div class="col-md-6 popular-grids">
					<img src="images/img5.jpg" class="img-responsive zoom-img" alt="">
				</div>
				<div class="clearfix"> </div>
			</div>
			<span class="bg-text">P</span>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!--//popular-->
	<!--table-book-->
	<div class="table-book">
		<div class="container">
			<div class="book-info wow fadeInDown animated" data-wow-delay=".5s">
				<div class="book-left">
					<h2 class="wow fadeInLeftBig animated" data-wow-delay=".5s">Book Your Coffee Now </h2>
					<p class="wow fadeInLeftBig animated" data-wow-delay=".5s">Call NOW to our toll free number Or book online </p>
				</div>
				<div class="book-right">
					<h3 class="wow fadeInRightBig animated" data-wow-delay=".5s">+0066 62313050</h3>
				</div>
				<div class="clearfix"> </div>
			</div>
			<span class="bg-text bg-right">B</span>
		</div>
	</div>
	<!--//table-book-->
	<!--footer-->
	<div class="footer">
		<div class="container">
			<div class="col-md-4 footer-left wow fadeInDown animated" data-wow-delay=".5s">
				<h4>Information</h4>
				<ul>
					<li><a href="testimonial.html"><i class="glyphicon glyphicon-chevron-right"></i>Customer Evaluation</a></li>
					<li><a href="team.html"><i class="glyphicon glyphicon-chevron-right"></i> Our Team</a></li>
					<li><a href="history.html"><i class="glyphicon glyphicon-chevron-right"></i> History</a></li>
					<li><a href="faq.html"><i class="glyphicon glyphicon-chevron-right"></i> FAQ</a></li>
				</ul>
			</div>
			<div class="col-md-4 footer-left wow fadeInDown animated" data-wow-delay=".5s">
				<h4>Details</h4>
				<ul>
					<li><a href="about.html"><i class="glyphicon glyphicon-chevron-right"></i> About</a></li>
					<li><a href="menu.jsp"><i class="glyphicon glyphicon-chevron-right"></i> Menu</a></li>
					<li><a href="contact.html"><i class="glyphicon glyphicon-chevron-right"></i> Contacts</a></li>
				</ul>
			</div>
			<div class="col-md-4 footer-right wow fadeInDown animated" data-wow-delay=".5s">
				<h4>Newsletter</h4>
				<div class="subscribe">
					<form>
						<input type="text" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}" required="">
						<input type="submit" value="">
					</form>
					<div class="clearfix"> </div>
				</div>
				<div class="social-icons">
					<ul>
						<li><a href="#"> </a></li>
						<li><a href="#" class="fb"> </a></li>
						<li><a href="#" class="in"> </a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!--//footer-->
	<!--smooth-scrolling-of-move-up-->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
			var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
			};
			*/
			
			$().UItoTop({ easingType: 'easeOutQuart' });
			
		});
	</script>
	<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
	<!--//smooth-scrolling-of-move-up-->
	<!--scrolling js-->
	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/scripts.js"></script>
	<!--//scrolling js-->
	<!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="js/bootstrap.js"></script>
</body>
</html>