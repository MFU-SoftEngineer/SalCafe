<html>
<head>
<title>Shopping Cart</title>
<!--mobile apps-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Espresso Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
	Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--mobile apps-->
<!--Custom Theme files -->
<link rel="stylesheet" href="css/jquery-labelauty.css">
<style>
.dowebok ul { list-style-type: none;}
.dowebok li { display: inline-block;}
.dowebok li { margin: 10px 0;}
input.labelauty + label { font: 12px "Microsoft Yahei";}
</style>
<link rel="stylesheet" type="text/css" href="css/imgyz.css">
<link href="css/flow.css" rel="stylesheet" type="text/css"  />
<link type="text/css" href="css/checkOutStyle.css" rel="stylesheet" />
<link href="css/bootstrap.css" type="text/css" rel="stylesheet" media="all">
<link href="css/style.css" type="text/css" rel="stylesheet" media="all"> 
<link rel="stylesheet" href="css/swipebox.css">
<!-- //Custom Theme files -->
<!-- js -->
<script src="js/jquery-1.11.1.min.js"></script>
<script type="text/javascript" src="js/imgyz.js"></script>
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
<!--circlechart-->
<script src="js/jquery.circlechart.js"></script>
<script src="js/jqRotateVerify.js" type="text/javascript" charset="utf-8"></script>
<!--circlechart-->
<!-- start-smoth-scrolling-->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>	
<script type="text/javascript" src="js/flow.js"></script> 
<%@ page import="Service.Impl.*" %>
<%@ page import="Model.*" %>
<%@ page import="java.util.*" %>
<%
ItemServiceImpl itemService = new ItemServiceImpl();
List<Item> itemBeverageList = itemService.queryAllItemByIdList(request.getParameter("id"));
%>
<script type="text/javascript">
	    var idList = new Array();
		jQuery(document).ready(function($) {
			$('.dowebok :input').labelauty();
			
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
			});
			var idListS = "<%=request.getParameter("id")%>";
			idList = idListS.split("S");
			getTotalPrice();
			
			$('.order').click(function(e) {

			    let button = $(this);

			    if(!button.hasClass('animate')) {
			        button.addClass('animate');
			        setTimeout(() => {
			            button.removeClass('animate');
			        }, 10000);
			    }

			});
			
			var myAlert = document.getElementById("alert"); 
			var myMask=document.getElementById('mask');  
			$(".order").click(function(){  
				myMask.style.display="block"; 
				myAlert.style.display = "block"; 
				document.body.style.overflow = "hidden"; 
			})
			$(".close").click(function(){
				myAlert.style.display = "none"; 
				myMask.style.display = "none"; 
			}) 
			
			
			var myRotateVerify = new RotateVerify('#rotateWrap',{
			initText:'Drag to make it right',//
			slideImage:['images/v1.jpg','images/v2.jpg','images/v3.jpg','images/v4.jpg','images/v5.jpg'],//arr  [imgsrc1,imgsrc2] or str 'imgsrc1'
			slideAreaNum:15,//  +- 10()
			getSuccessState:function (res) {//success return  true;
				console.log('test1' + res);
				if(res == true){
					$("#btnok").attr("disabled", false);
				}
				//myRotateVerify.resetSlide(); reset picture
				//myRotateVerify.verifyState; get state
				}
			})
			
			$(":radio").click(function(){
				if($(this).val()=="code"){
					$("#qr_code").show();
				}else{
					$("#qr_code").hide();
				}
			});
			$("#btnok").attr("disabled", true);
			$("#btnok").click(function (f){
				var rName = $("#r_name").val();
				var rPhone = $("#r_phone").val();
				var rAddress = $("#r_address").val();
				var payMent= $(":radio:checked").val();
				if(rName.length < 1 || rPhone.length < 1 || rAddress.length < 1){
					$("#btnok").attr("disabled", true);
					myRotateVerify.resetSlide();
					alert("Please fill out deliver information!");
				}else{
					
				}
			});
			
			
		});		
		function allowDrop(ev)
		{
			ev.preventDefault();
		}

		function drag(ev)
		{
			ev.dataTransfer.setData("Text",ev.target.id);
		}

		function drop(ev)
		{
			var data=ev.dataTransfer.getData("Text");
			$("#"+data).hide(500);
			var id = data.substr(1);
			for(var i = 0;i<idList.length;i++){
				if(idList[i] == id){
					idList.splice(i,1);
				}
			}
			if(idList.length==0){
				if(confirm("Empty Shopping cart ! Want to leave ? ")){
					window.opener=null;
					window.open('','_self');
					window.close();
				}
			}
			getTotalPrice();
			//ev.preventDefault();
			//var data=ev.dataTransfer.getData("Text");
			//ev.target.appendChild(document.getElementById(data));
		}
		function getTotalPrice(){
			var priceStr = "Total :";
			var total = 0;
			for(var i = 0;i<idList.length;i++){
				total += Number($("#p"+idList[i]).text().substr(5));
			}
			priceStr += " <code>"+total+"</code> THB";
			if(total > 300){
				priceStr += " * 85% = <code>"+Math.round(total*0.85)+"</code> THB"
			}else if(total >=200){
				priceStr += " * 90% = <code>"+Math.round(total*0.9)+"</code> THB"
			}else if(total >= 100){
				priceStr += " * 95% = <code>"+Math.round(total*0.95)+"</code> THB"
			}
			$("#p_price").html(priceStr);
		}
</script>
<!--//end-smoth-scrolling-->
<style>
#alert {
	z-index: 2;
	border: 1px solid rgba(0,0,0,.2);
	width: 598px;
	height: auto;
	border-radius: 6px;
	box-shadow: 0 5px 15px rgba(0,0,0,.5);
	background: #fff;
	z-index: 1000;
	position: absolute;
	left: 50%;
	top: 50%;
	margin-left: -299px;
	display: none;
}
.model-head {
	padding: 15px;
	color: #73879C;
	border-bottom: 1px solid #e5e5e5;
}
.close {
	padding: 0;
	cursor: pointer;
	background: 0 0;
	border: 0;
	float: right;
	font-size: 14px !important;
	font-weight: 700;
	text-shadow: 0 1px 0 #fff;
	opacity: 0.4;
	margin-top: 5px;
}
#close:hover {
	cursor: pointer;
	color: #000;
}
#mask {
	position: absolute;
	top: 0;
	left: 0;
	height: 100%;
	width: 100%;
	background: #000;
	opacity: 0.3;
	display: none;
	z-index: 1;
}
.model-content {
	position: relative;
	padding: 15px;
}
.model-foot {
	padding: 15px;
	text-align: right;
}
</style>
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
				<li class="menu-item"><a class="menu-link" href="popular.jsp">popular</a></li>
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
			<h1 class="wow fadeInDown animated" data-wow-delay=".5s"><a href="index.jsp">SAL Cafe</a> </h1>
			<h2 class="wow fadeInUp animated" data-wow-delay=".5s"><a href="index.jsp">Home</a> / Check Out</h2>
		</div>
		<div id="trash" style="position:absolute;margin-left:1000px;margin-top:170px;z-index:999;" ondrop="drop(event)" ondragover="allowDrop(event)">
					<a href="#">
						<img id="checkImg" src="images/trash.png" alt=""/>
					</a>
		</div>	
		<div class="clearfix"> </div>
	</div>
	<!--//banner-->
	<!--team-->
	<div class="team">
		<div class="container">
			<h4 class="title">Shopping cart</h4>
			<h3 class="title1">We support payment with <span>ONLINE</span> and <span>CASH</span> </h3>
			
			<div class="team-info">
				<%
				for(Item item:itemBeverageList){
				%>
				<div class="col-md-3 team-grids wow zoomIn animated" data-wow-delay=".5s" id="i<%=item.getItemId() %>" draggable="true" ondragstart="drag(event)">
					<img class="img-responsive" src="images/<%=item.getItemPhotoURL() %>" alt="">
					<div class="captn">
						<h4><%=item.getItemName() %></h4>
					</div>
					<p id="p<%=item.getItemId()%>">THB : <%=item.getItemPrice() %></p>
				</div>					
				<%} %>				
				<div class="clearfix"> </div>
			</div>
			<span class="bg-text">C</span>
			<br/>
			
			<h2><p id="p_price"></p> </h2>
			<br/>
			<div class="progress">
				<div class="progress-bar progress-bar-info" style="width: 25%"><= 100THB free deliver fee(5KM)<span class="sr-only">25% Complete (info)</span></div>
				<div class="progress-bar progress-bar-inverse" style="width: 25%">100-199THB discount 95%<span class="sr-only">25% Complete (inverse)</span></div>
				<div class="progress-bar progress-bar-warning" style="width: 25%">200-300THB discount 90%<span class="sr-only">25% Complete (warning)</span></div>
				<div class="progress-bar progress-bar-success" style="width: 25%">>300THB discount 85%<span class="sr-only">33% Complete (success)</span></div>
			</div>
			
			<button id="checkOut" class="order" style="margin-left:39%;margin-top:100px;"><span class="default">Check Out</span>
			<span class="success">Finshed<svg viewbox="0 0 12 10"><polyline points="1.5 6 4.5 9 10.5 1"></polyline></svg></span>
  				<div class="box"></div>
  				<div class="truck">
    				<div class="back"></div>
    				<div class="front">
      					<div class="window"></div>
    				</div>
    				<div class="light top"></div>
    				<div class="light bottom"></div>
  				</div>
  				<div class="lines"></div>
			</button>

<div id="alert" class="">
	<div class="model-head">
		<span class="close">&times;</span>
		<h4 class="modal-title">Deliver Flow</h4>
	</div>
	<div class="model-content">
		<div class="main">
			<div class="row">
				<div class="col-md-12">
					<div class="flow">
						<div class="flowListBox"> </div>
					</div>
				</div>
				<div class="col-md-12" id="flowDiv">
					<ol id="iList">
						<div id="contA">
							<span class="badge badge-primary">Receiver Information</span>
							<div class="input-group" style="margin-top:15px;">
								<span class="input-group-addon" id="basic-addon1">Name</span>
								<input type="text" class="form-control" id="r_name" placeholder="Receiver name" aria-describedby="basic-addon1">
							</div>
							<div class="input-group">
								<span class="input-group-addon" id="basic-addon1">Phone</span>
								<input type="text" class="form-control" id="r_phone" placeholder="Receiver phone" aria-describedby="basic-addon1">
							</div>
						</div>
						
						<div class="contentList" id="contB">
							<span class="badge badge-warning">Receiver Address</span>
							<div class="input-group" style="margin-top:15px;">
								<span class="input-group-addon" id="basic-addon1">Address</span>
								<input type="text" class="form-control" id="r_address" placeholder="Receiver name" aria-describedby="basic-addon1">
							</div>
						</div>
						
						<div class="contentList" id="contC">
							<span class="badge badge-info">PayMent method</span>
							<br/>
							<div class="btn-group" style="margin-top:15px;">
								<ul class="dowebok">
									<li><input type="radio" name="radio" value="code" data-labelauty="QR Code" checked></li>
									<li><input type="radio" name="radio" value="cash" data-labelauty="Cash"></li>
									<li><input type="radio" name="radio" disabled data-labelauty="Balances"></li>
								</ul>
							</div>
							<div style="position:absolute;margin-left:330px;margin-top:-100px;" id="qr_code">
								<img src="images/code.png" alt="" height="150px" width="150px"/>
							</div>
						</div>
						
						<div class="contentList" id="contD">
							<div id="rotateWrap" style="margin-top:50px;"></div>
						</div>
					</ol> 
				</div>
			</div>
		</div>
	</div>

	<div class="foot-btn">
		<button type="button" class="btn btn-primary" id="btnBack">Back</button>
		<button type="button" class="btn btn-default"  style="float:right; display:none" id="btnok">Finsh</button>
		<button type="button" class="btn btn-success"  style="float:right; margin-right:10px;" id="btnNext">Next</button>
	</div>
</div>

<div id="mask"></div>



		</div>
	</div>
	<!--//team-->
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
    <script src="js/jquery-labelauty.js"></script>
</body>
</html>