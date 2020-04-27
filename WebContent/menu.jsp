<!DOCTYPE html>
<html>
<head>
<title>Menu</title>
<!--mobile apps-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Espresso Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--mobile apps-->
<!--Custom Theme files -->
<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="css/style.css" type="text/css" rel="stylesheet" media="all"> 
<link rel="stylesheet" href="css/swipebox.css">
<!-- //Custom Theme files -->
<!-- js -->
<script src="js/jquery-1.11.1.min.js"></script>
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
		var selectedList = new Array();
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
			});
			
			if(<%=request.getParameter("type") %> == "2"){
				$("#beverage").hide();
				$("#snack").show();
				$("#menuBeverage").show();
				$("#menuSnack").hide();
			}else{
				$("#beverage").show();
				$("#snack").hide();
				$("#menuBeverage").hide();
				$("#menuSnack").show();
			}
			var selectId = Number(<%=request.getParameter("id")%>);
			if(selectId > 0){
				selectedList[selectedList.length] = selectId;
				$("#selected"+selectId).show();
				$("#unselected"+selectId).hide();
			}
			checkOutImage();
		});
		
		function removeItem(id){
			for(var i = 0;i<selectedList.length;i++){
				if(selectedList[i] == id){
					selectedList.splice(i,1);
				}
			}
			$("#selected"+id).hide();
			$("#unselected"+id).show();
			checkOutImage();
		}
		function addItem(id){
			selectedList[selectedList.length] = id;
			$("#selected"+id).show();
			$("#unselected"+id).hide();
			checkOutImage();
		}
		function changeMenu(type){
			if(type=="beverage"){
				$("#menuBeverage").hide();
				$("#menuSnack").show();
				$("#beverage").show();
				$("#snack").hide();
			}else{				
				$("#menuBeverage").show();
				$("#menuSnack").hide();
				$("#beverage").hide();
				$("#snack").show();
			}
		}
		
		function checkOutImage(){
			if(selectedList.length > 0){
				$("#checkImg").attr("src","images/shop_1.png")
			}else{
				$("#checkImg").attr("src","images/shop_0.png")
			}
		}
		
		function goCheckOut(){
			var url = "checkout.jsp?id="+selectedList;
			url = url.replace(/,/g,"S");
			window.open(url);
		}
</script>
<!--//end-smoth-scrolling-->
</head>
<body>
<%@ page import="Service.Impl.*" %>
<%@ page import="Model.*" %>
<%@ page import="java.util.*" %>
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
				<li class="menu-item menu-item-current"><a class="menu-link" href="menu.jsp">MENU</a></li>
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
			<h1 class="wow fadeInDown animated" data-wow-delay=".5s"><a href="index.jsp">SAL Cafe</a> </h1>
			<h2 class="wow fadeInUp animated" data-wow-delay=".5s"><a href="index.jsp">Home</a> / Menu</h2>
		</div>
		<div class="clearfix"> </div>
	</div>
	<!--//banner-->
	<!-- gallery -->
	<div class="gallery">
		<div class="container">
			<h4 class="title">Menu</h4>
			<h3 class="title1">OUR COFFEE <span>FLAV</span>ORS ARE</h3>
			<div style="position:absolute;color:grey;margin-left:800px;margin-top:-50px;">
				<h1>
					<a id="menuSnack" href="#" onclick="changeMenu('snack')"><span class="label label-warning" >Snack</span></a>
					<a id="menuBeverage" href="#" onclick="changeMenu('beverage')"><span class="label label-warning">Beverage</span></a>
				</h1>
			</div>
			<div id="checkOut" style="position:absolute;margin-left:1000px;margin-top:-100px;z-index:999;" onclick="goCheckOut()">
					<a href="#">
						<img id="checkImg" src="images/shop_0.png" alt=""/>
					</a>
			</div>	
			<div class="gallery-row">
				
				<% 	
					ItemServiceImpl itemService = new ItemServiceImpl();
					List<Item> itemBeverageList = itemService.queryAllItemByType(1);
					List<Item> itemSnackList = itemService.queryAllItemByType(2);
				%>
										
					<div id="beverage">
						<%
							for(Item item:itemBeverageList){
						%>
						<div class="col-md-4 gallery-grids grid" id="i<%=item.getItemId()%>" onclick="">
							<figure class="effect-ming wow zoomIn animated" data-wow-delay=".5s">
								<a href="images/<%=item.getItemPhotoURL() %>" class="swipebox">
									<img src="images/<%=item.getItemPhotoURL() %>" alt="" class="img-responsive"/>
									<figcaption><h5><%=item.getItemName() %><br/><span>THB : <%=item.getItemPrice() %></span></h5></figcaption>	
								</a>	
							</figure>
							
							<div id="selected<%=item.getItemId()%>" style="display:none;">
								<div style="position:absolute;margin-top:-50px;margin-left:120px;z-index:9999;">
									<img src="images/selected.png" alt=""/>
								</div>
								<div style="position:absolute;margin-top:-50px;margin-left:190px;z-index:9999;" onclick="removeItem(<%=item.getItemId()%>)">
									<img src="images/remove.png" alt=""/>
								</div>
							</div>
							
							<div id="unselected<%=item.getItemId()%>">
								<div style="position:absolute;margin-top:-50px;margin-left:150px;z-index:9999;" onclick="addItem(<%=item.getItemId()%>)">
									<img src="images/put_in.png" alt=""/>
								</div>
							</div>
						</div>
						<% }%>
					</div>
					
					
					<div id="snack">
						<%
							for(Item item:itemSnackList){
						%>
						<div class="col-md-4 gallery-grids grid" id="i<%=item.getItemId()%>">
							<figure class="effect-ming wow zoomIn animated" data-wow-delay=".5s">
								<a href="images/<%=item.getItemPhotoURL() %>" class="swipebox">
									<img src="images/<%=item.getItemPhotoURL() %>" alt="" class="img-responsive"/>
									<figcaption><h5><%=item.getItemName() %><br/><span>THB : <%=item.getItemPrice() %></span></h5></figcaption>	
								</a>	
							</figure>
							<div id="selected<%=item.getItemId()%>" style="display:none;">
								<div style="position:absolute;margin-top:-50px;margin-left:120px;z-index:9999;">
									<img src="images/selected.png" alt=""/>
								</div>
								<div style="position:absolute;margin-top:-50px;margin-left:190px;z-index:9999;" onclick="removeItem(<%=item.getItemId()%>)">
									<img src="images/remove.png" alt=""/>
								</div>
							</div>
							
							<div id="unselected<%=item.getItemId()%>">
								<div style="position:absolute;margin-top:-50px;margin-left:150px;z-index:9999;" onclick="addItem(<%=item.getItemId()%>)">
									<img src="images/put_in.png" alt=""/>
								</div>
							</div>
						</div>
						<% }%>
					</div>
					
					
					
				<div class="clearfix"> </div>
				<!-- swipe box js -->
				<script src="js/jquery.swipebox.min.js"></script> 
					<script type="text/javascript">
						jQuery(function($) {
							$(".swipebox").swipebox();
						});
				</script>
				<!-- //swipe box js -->
			</div>
			<span class="bg-text">M</span>
		</div>
	</div>
	<!-- //gallery -->
	
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
</body>
</html>