<%@page import="java.lang.String"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Login V15</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main_1.css">
<!--===============================================================================================-->

</head>
<body>
   
    
    
	<div class="limiter">
            <div class="container-login100">
			<div class="wrap-login100">		

				<div class="login100-form-title" style="background-image: url(img/login_1.jpg);">
				<div id="logo">
			        <a href="index.jsp"><img src="img/JSTC logo3.png" alt="" title="" /></a>
                                </div><br>	
                                    <span class="login100-form-title-1">
						Sign In
					</span>
				</div>
                            
                       <%
    if(null!=request.getAttribute("Errormessage"))
    {
        out.println("<center style='color:red'>"+request.getAttribute("Errormessage")+"</center>");
    }
%>
                            <form class="login100-form validate-form" action="Login_logic.jsp" method="post" name="loginform">
					<div class="wrap-input100 validate-input m-b-26" data-validate="Username is required">
						<span class="label-input100">Username</span>
						<input class="input100" type="text" name="username" placeholder="Enter username">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-18" data-validate = "Password is required">
						<span class="label-input100">Password</span>
						<input class="input100" type="password" name="pass" placeholder="Enter password">
						<span class="focus-input100"></span>
					</div>

					<div class="flex-sb-m w-full p-b-30">
						
                                           <div class="contact100-form-checkbox">
                                               <input type="radio" name="profile" value="Faculty" checked>&nbsp;&nbsp;Faculty
                                               </div>
                                            <div class="contact100-form-checkbox">
							<input type="radio" name="profile" value="Student">&nbsp;&nbsp;Student
							
						</div>
                                          
                                           <div>
                                               <a href="forgot.jsp" class="txt1">
								Forgot Password?
							</a>
						</div>     
                                                
					<!--	<div>
                                                    <a href="" onclick="box()">Forgot Password?</a>
						</div>
                                            -->
					</div>

                                       
					<div class="container-login100-form-btn">
						
                                            <button class="login100-form-btn"><a href="registration.jsp" style="color:#FFF">Student Register</a></button> <br><br>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                <button class="login100-form-btn"><a href="Faculty_registration.jsp" style="color:#FFF">Faculty Register</a></button> 
						
                                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                         <input type="submit" class="login100-form-btn" value="Login"> </center>
                                                
					</div>
                                
                                        
				</form>
                           
			</div>
		</div>
	</div>
    
	
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main_1.js"></script>

</body>
</html>