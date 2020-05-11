<%@ page import="Model.*" %>
<%@ page import="Service.Impl.*" %>
<%@ page import="java.util.*"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%
//double price = Double.parseDouble(request.getParameter("price"));
//double discount = (Double.parseDouble(request.getParameter("discount")))/100;
String rName = request.getParameter("rName");
String rPhone = request.getParameter("rPhone");
//String rAddress = request.getParameter("rAddress");
//int payment = request.getParameter("payMent") == "code" ? 2 : 1;
//String userName = request.getSession().getAttribute("userName") == null ? "Unknow" : request.getSession().getAttribute("userId").toString();
//long nowTime = System.currentTimeMillis()/1000;
//int nowTimeInt = new Long(nowTime).intValue();
//int orderId = nowTimeInt;
//String idList = request.getParameter("idList").toString();
//Order order = new Order(orderId,userName,price,discount,payment,rAddress,rName,rPhone,new Date(),0,idList);
//OrderServiceImpl orderServiceImpl = new OrderServiceImpl();
//orderServiceImpl.addOrder(order);
%>
<!DOCTYPE html>
<html>
<head>
<title>Order</title>
<!--mobile apps-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Espresso Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--mobile apps-->
<!--Custom Theme files -->
<link rel="stylesheet" href="css/easyhelper.min.css">
<link rel="stylesheet" type="text/css" href="css/normalize.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="css/style.css" type="text/css" rel="stylesheet" media="all"> 
<!-- //Custom Theme files -->
<!-- js -->
<script src="js/es6-shim.min.js"></script>
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/jquery.transit.min.js"></script>
<script src="js/easyhelper.min.js"></script>
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
<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
			});
			successful();
		});
		
		function successful(){
			Helper.ui.dialogSuccess("HI : <%=rName%>","You Order we already got , please keep phone number  <%=rPhone%>   online , we will send to your order as soon as possible!");
		}
</script>
<!--//end-smoth-scrolling-->
</head>
<body>
    
	<!--banner-->
	<div class="banner about-bnr">
	    <div class="bnr-img">
			<img class="wow fadeInLeftBig animated" data-wow-delay=".5s" src="images/a.png" alt=""/>
		</div>
		<div class="top-nav">
			<span class="menu"><img src="images/menu-icon.png" alt=""/></span>
			<ul class="nav1 menu-list">
				<li class="menu-item"><a class="menu-link" href="index.jsp">HOME</a></li>
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
			<h1 class="wow fadeInDown animated" data-wow-delay=".5s"><a href="index.html">SAL Cafe</a> </h1>
			<h2 class="wow fadeInUp animated" data-wow-delay=".5s"><a href="index.html">Home</a> / Order</h2>
		</div>
		<div class="clearfix"> </div>
	</div>
	<!--//banner-->
	<!-- contact -->
	<div class="contact">
		<div class="container">
			<h4 class="title wow fadeInDown animated" data-wow-delay=".5s">Where are we ????</h4>
			<h3 class="title1 wow fadeInDown animated" data-wow-delay=".5s">LOCATION OF OUR <span>SAL</span>CAFE</h3>
			<span class="bg-text">C</span>
			<div class="map wow zoomIn animated" data-wow-delay=".5s">
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3748.1311852744734!2d99.89215751421591!3d20.044947186539414!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x30d700048c69def1%3A0xa20592e502bc20c9!2sMae%20Fah%20Luang%20University!5e0!3m2!1sen!2sth!4v1588607967471!5m2!1sen!2sth" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
			</div>
			<div class="contact-form">
				<div class="col-md-5 contact-left">
					<div class="address wow fadeInLeft animated" data-wow-delay=".5s">
						<h5>Address:</h5>
						<p><i class="glyphicon glyphicon-home"></i>MFU University , Chiang Rai</p>
					</div>
					<div class="address address-mdl wow fadeInLeft animated" data-wow-delay=".5s">
						<h5>Phones:</h5>
						<p><i class="glyphicon glyphicon-earphone"></i> +86 01234</p>
						<p><i class="glyphicon glyphicon-phone"></i> +86 0123123123</p>
					</div>
					<div class="address wow fadeInLeft animated" data-wow-delay=".5s">
						<h5>Email:</h5>
						<p><i class="glyphicon glyphicon-envelope"></i> <a href="mailto:info@example.com">saleCafe@mfu.ac.th</a></p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //contact -->
	<!--table-book-->
	<div class="table-book">
		<div class="container">
			<div class="book-info wow fadeInDown animated" data-wow-delay=".5s">
				<div class="book-left">
					<h2 class="wow fadeInLeftBig animated" data-wow-delay=".5s">Book Your Coffee Now </h2>
					<p class="wow fadeInLeftBig animated" data-wow-delay=".5s">Call NOW to our toll free number Or book online </p>
				</div>
				<div class="book-right">
					<h3 class="wow fadeInRightBig animated" data-wow-delay=".5s">+0086 1234567</h3>
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
					<li><a href="faq.html"><i class="glyphicon glyphicon-chevron-right"></i>FAQ</a></li>
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
			<div class="clearfix"> </div>

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
    
    <script type='text/javascript' src='js/jquery.modal.js'></script>
    <script type='text/javascript' src='js/site.js'></script>
</body>
</html>
