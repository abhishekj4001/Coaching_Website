<%-- 
    Document   : hibernate
    Created on : 17 Oct, 2018, 11:27:15 PM
    Author     : Rini
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<!DOCTYPE html>
	<html lang="zxx" class="no-js">
	<head>
		<!-- Mobile Specific Meta -->
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<!-- Favicon-->
		<link rel="shortcut icon" href="img/fav.png">
		<!-- Author Meta -->
		<meta name="author" content="colorlib">
		<!-- Meta Description -->
		<meta name="description" content="">
		<!-- Meta Keyword -->
		<meta name="keywords" content="">
		<!-- meta character set -->
		<meta charset="UTF-8">
		<!-- Site Title -->
		<title>Education</title>

		<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 
			<!--
			CSS
			============================================= -->
			<link rel="stylesheet" href="css/linearicons.css">
			<link rel="stylesheet" href="css/font-awesome.min.css">
			<link rel="stylesheet" href="css/bootstrap.css">
			<link rel="stylesheet" href="css/magnific-popup.css">
			<link rel="stylesheet" href="css/nice-select.css">							
			<link rel="stylesheet" href="css/animate.min.css">
			<link rel="stylesheet" href="css/owl.carousel.css">			
			<link rel="stylesheet" href="css/jquery-ui.css">			
			<link rel="stylesheet" href="css/main.css">
                            <style>
                            #enqbtn{margin: 5px 115px;}
                    #sctmenu{width: 362px;}
#spacer{margin: 5px 0px;}

                            </style>
		</head>
		<body>	
                    <header id="header" id="home">
	  		<div class="header-top">
	  			<div class="container">
			  		<div class="row">
			  			
			  			
			  		</div>			  					
	  			</div>
			</div>
		    <div class="container main-menu">
		    	<div class="row align-items-center justify-content-between d-flex">
			      <div id="logo">
			        <a href="index.jsp"><img src="img/JSTC logo3.png" alt="" title="" /></a>
			      </div>
			      <nav id="nav-menu-container">
			        <ul class="nav-menu">
			          <li><a href="index.jsp">Home</a></li>
			          <li><a href="about.jsp">About</a></li>
			          <li><a href="courses.jsp">Courses</a></li>
			          <li><a href="gallery.jsp">Gallery</a></li>
			          			          					          		          
			          <li><a href="contact.jsp">Contact Us</a></li>
                                   <li><a href="#foot">Enquiries</a></li>
			        </ul>
			      </nav><!-- #nav-menu-container -->		    		
		    	</div>
		    </div>
		  </header><!-- #header -->
		  
			<!-- start banner Area -->
			<section class="banner-area relative about-banner" id="home">	
				<div class="overlay overlay-bg"></div>
				<div class="container">				
					<div class="row d-flex align-items-center justify-content-center">
						<div class="about-content col-lg-12">
							<h1 class="text-white">
								HIBERNATE		
							</h1>	
                                                    <p class="text-white link-nav"><a href="index.jsp">Home </a>  <span class="lnr lnr-arrow-right"></span>  <a href="courses.jsp"> Popular Courses</a>
						</div>	
							</div>
					</div>
				</div>
			</section>
			<!-- End banner Area -->	

			<!-- Start course-details Area -->
<!--	<section class="course-details-area pt-120">   -->
				<div class="container">
					<div class="row">
						<div class="col-lg-8 left-contents">
						<!--	<div class="main-image">
								<img class="img-fluid" src="img/Capture5 (2).PNG" alt="">
							</div>  -->
							<div class="jq-tab-wrapper" id="horizontalTab">
	                            <div class="jq-tab-menu">
	                                <div class="jq-tab-title active" data-tab="1"><b> <h1>SYLLABUS</h1> </B></div>
	                               
	                                
	                            </div> 
	                            <div class="jq-tab-content-wrapper">
	                                <div class="jq-tab-content active" data-tab="1">
                                           
                                   
                                                           <h4><b>Introduction to Hibernate</b></h4><br>
                            <li>Setting Up Hibernate</li>
                            <li>Part-1-Writing a Hibernate Application</li>
                            <li>Part-2-Writing the Model Class with Annotations</li>
                            <li>Part-3-Saving Objects using Hibernate APIs</li>
                            <li>hbm2ddl-Configuration and Name Annotations</li>
                            <li>More Annotations</li>
                            <li>Retrieving-objects using session get Primary Keys</li>
                            <li>Value Types and Embedding Objects</li>
                            <li>Attributes Overrides and Embedded Object Keys</li>
                            <li>Saving Collections</li>
                            <li>Configuring Collections and Adding Keys</li>
                            <li>Proxy Objects and Eager and Lazy Fetch Types</li>
                            <li>One to One Mapping</li>
                            <li>One to Many Mapping</li>
                            <li>Many to Many Mapping</li>
                            <li>Cascade Types and Other Things</li>
                            <li>Implementing Inheritance</li>
                            <li>Implementing Inheritance - Single Table Strategy</li>
                            <li>Implementing Inheritance with Table Per Class Strategy</li>
                            <li>Implementing Inheritance with Joined Strategy</li>
                            <li>CRUD Operations</li>
                            <li>Transient, Persistent and Detached Objects</li>
                            <li>Understanding State Changes</li>
                            <li>Persisting Detached Objects</li>
                            <li>Introducing HQL and the Query Object</li>
                            <li>Select and Pagination in HQL</li>
                            <li>Understanding Parameter Binding and SQL Injection</li>
                            <li>Named Queries</li>
                            <li>Introduction to Criteria API</li>
                            <li>Understanding Restrictions</li>
                            <li>Projections and Query By Example</li>
                            <li>Caching in Hibernate</li>
                            <li>Configuring Second Level Cache</li>
                            <li>Using Query Cache</li><br><br>
                                 </div>
                                    </div><br>
                                                        </div>
                                                </div>
                                        </div>
                                </div>

			<!-- start footer Area -->		
				<footer class="footer-area section-gap" id="foot">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-2 col-md-6 col-sm-6">
				<!--<div class="single-footer-widget">
                                    <h4>Quick links</h4>
                                    <ul>
					<li><a href="courses.jsp">Courses</a></li>
                                        <li><a href="#">Trainings</a></li>
					<li><a href="gallery.jsp">Gallery</a></li>
                                        <li><a href="#">Services</a></li>
                                    </ul>								
                                </div>-->
                            </div>
                            <div class="col-lg-2 col-md-6 col-sm-6">
				<div class="single-footer-widget">
                                    <h4>Our Location</h4>
                                        <ul>
                                            <li>JSTC,E-3/285,</li>
                                            <li>   10 No. Market, </li>
                                            <li> Near SBI Bank, </li>
                                            <li>  Bhopal 462008 </li>
					</ul>								
				</div>
                            </div>
                            <div class="col-lg-2 col-md-6 col-sm-6">
				<div class="single-footer-widget">
                                    <h4>Get in touch</h4>
                                    <ul>
					<li>Phone:0755-4269090</li>
					<li>Email Us: rachitjaish@gmail.com </li>
                                        <li>Facebook: facebook.com/jstcworld</li>
                                    </ul>								
				</div>
                            </div>																		
                            <div class="col-lg-4  col-md-6 col-sm-6">
				<div class="single-footer-widget">
                                    <h4>Enquiries</h4>
                                    <p>Please enter your details below. We will contact you at the earliest.</p>
                                    <div class="" id="mc_embed_signup">
					<form target="_blank" action="email.jsp" method="post">
                                            <div class="input-group">
                                                <input type="text" class="form-control" name="name" placeholder="Your Name" onfocus="this.placeholder = 'Your Name'" onblur="this.placeholder = 'Your Name'" required="required" type="name">
                                            
                                                <input id="spacer" type="number" class="form-control" name="phone" placeholder="Mobile Number" onfocus="this.placeholder = 'Mobile Number'" onblur="this.placeholder = 'Mobile Number'" required="required" type="mobnum">
                                                 
                                                
                                                <select id="sctmenu" required="required" name="course">
                                                    <option value="" disabled selected hidden>-Choose below-</option>
                                                    <option>Android</option>                                               
                                                    <option>C/C++</option>
                                                    <option>Hibernate</option>
                                                    <option>Java SE (Core Java)</option>
                                                    <option>Java EE/Jakarta EE (Advanced Java)</option>                                               
                                                    <option>Node JS</option>
                                                    <option>Python</option>
                                                    <option>Salesforce</option>
                                                    <option>Spring</option>
                                                </select>
                                                <textarea id="spacer"  class="form-control" name="enqry" placeholder="Please write about your enquiry" onfocus="this.placeholder = 'Your Enquiry Here'" onblur="this.placeholder = 'Your Enquiry Here'" required="required" type="enqry"></textarea>
                                                <div class="info">
                                                </div>  
                                            </div>
                                            <button class="primary-btn text-uppercase" id="enqbtn" value="Enquire" type="submit">
                                                Enquire
                                            </button>
					</form>  
                                    </div>
				</div>
                            </div>											
                        </div>
                        <div class="footer-bottom row align-items-center justify-content-between">
                            <p class="footer-text m-0 col-lg-6 col-md-12">
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                            Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved by JSTC
                            <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
			</div>						
                    </div>
		</footer>
                        <!-- End footer Area -->	


			<script src="js/vendor/jquery-2.2.4.min.js"></script>
			<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
			<script src="js/vendor/bootstrap.min.js"></script>			
			<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>
  			<script src="js/easing.min.js"></script>			
			<script src="js/hoverIntent.js"></script>
			<script src="js/superfish.min.js"></script>	
			<script src="js/jquery.ajaxchimp.min.js"></script>
			<script src="js/jquery.magnific-popup.min.js"></script>	
    		<script src="js/jquery.tabs.min.js"></script>						
			<script src="js/jquery.nice-select.min.js"></script>	
			<script src="js/owl.carousel.min.js"></script>									
			<script src="js/mail-script.js"></script>	
			<script src="js/main.js"></script>	
		</body>
	</html>