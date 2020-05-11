
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Register</title>

    <!-- Font Icon -->
    <link rel="stylesheet" href="login/fonts/material-icon/css/material-design-iconic-font.min.css">

    <!-- Main css -->
    <link rel="stylesheet" href="login/css/style.css">
</head>

<body>
<div class="main" src="images/bg.jpg">

        <!-- Sign up form -->
        <section class="signup">
            <div class="container">
                <div class="signup-content">
                    <div class="signup-form">
                        <h2 class="form-title">Sign up  </h2>
 
                        <form method="POST" class="register-form" id="register-form" action="createuser.jsp">
                        	User ID <p type="text" name="id" id="userIdP" class="agree-term"></p>
                        	<div class="form-group">
                                <label for="id"><i class="zmdi zmdi-assignment"></i></label>
                                <input type="text" name="userId" id="userId" placeholder="Your ID"/>
                            </div>
                            <div class="form-group">
                                <label for="name"><i class="zmdi zmdi-account material-icons-name"></i></label>
                                <input type="text" name="userName" id="name" placeholder="Your Name"/>
                            </div>
                            <div class="form-group">
                                <label for="email"><i class="zmdi zmdi-email"></i></label>
                                <input type="email" name="userEmail" id="email" placeholder="Your Email"/>
                            </div>
                            <div class="form-group">
                                <label for="pass"><i class="zmdi zmdi-lock"></i></label>
                                <input type="password" name="userPassWord" id="pass" placeholder="Password"/>
                            </div>
                            <div class="form-group">
                                <label for="re-pass"><i class="zmdi zmdi-lock-outline"></i></label>
                                <input type="password" name="re_pass" id="re_pass" placeholder="Repeat your password"/>
                            </div>
                            <div class="form-group">
                                <label for="phone"><i class="zmdi zmdi-phone"></i></label>
                                <input type="number" name="userPhoneNumber" id="phone" placeholder="Telephone"/>
                            </div>
                            <div class="form-group">
                                <input type="radio" name="userGender" id="1" value="1" class="agree-term" checked> Male
  								<input type="radio" name="userGender" id="0" value="0" class="agree-term"> Female
                            </div>	
                            <div class="form-group">
                                <input type="checkbox" name="agree-term" id="agree-term" class="agree-term" onclick = "checkAgree()" />
                                <label for="agree-term" class="label-agree-term"><span><span></span></span>I agree all statements in  <a href="#" class="term-service">Terms of service</a></label>
                            </div>
                            <div class="form-group form-button">
                                <input type="button" style="background-color:grey;" disabled="disabled" onclick="checkRegister()" name="signup" id="signup" class="form-submit" value="Register"/>
                            </div>
                        </form>
                    </div>
                    <div class="signup-image">
                        <figure><img src="images/bg1.png" alt="sing up image"></figure>
                        <a href="login.jsp" class="signup-image-link">I am already member</a>
                    </div>
                </div>
            </div>
        </section>
</div>
<!-- JS -->
<script>
	document.getElementById("userId").value = Math.floor(Math.random() * 1000);
	function checkAgree(){
		var btn = document.getElementById("signup");
		if(document.getElementById('agree-term').checked == false){
			btn.setAttribute("disabled", true);
			btn.style.backgroundColor='grey';
		}else{
			btn.removeAttribute("disabled");
			btn.style.backgroundColor='blue';
		}
	}
</script>
<script type="text/javascript">
	function checkRegister(){
		var name =$("#name").val();
		if(!name.length>0){
			alert("Please enter your username."); 
	        name.focus();
	        return;
		}
		var pass = $("#pass").val();
		if(!pass.length>0){
			alert("Please enter your password."); 
	        pass.focus(); 
	        return;
		}
		var re_pass = $("#re_pass").val();
		if(re_pass != pass){
			alert("Please enter same password."); 
	        re_pass.focus(); 
	        return;
		}
		var email = $("#email").val();
		if(!email.length>0){
			alert("Please enter your email."); 
			email.focus(); 
	        return;
		}
		var phone = $("#phone").val();
		if(!phone.length>0){
			alert("Please enter your phone."); 
			phone.focus(); 
	        return;
		}
		$("#register-form").submit();
	}
	    
	    
</script>
    <script src="login/vendor/jquery/jquery.min.js"></script>
    <script src="login/js/main.js"></script>
</body>
</html>