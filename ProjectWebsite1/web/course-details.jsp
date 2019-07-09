<%-- 
    Document   : course-details
    Created on : Sep 6, 2018, 9:34:20 AM
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
								SALESFORCE		
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
                                          <h4><b>Introduction to CRM</b></h4><br>
                                    <li>Why CRM? </li>
                                    <li>Introduction to Cloud Computing and Salesforce.com</li>
                                    <li>Cloud Computing-Overview</li>
                                    <li>Software As A Service(SAAS)</li>
                                    <li>Platform-as-a-Service</li>
                                    <li>Information as a service </li><br>
                                    
                                    <h4><b>What is Salesforce.com?</b></h4><br>
                                    <li> Salesforce.com CRM editions </li>
                                    <li> Salesforce Architecture</li>
                                    <li>Salesforce Editions</li><br>
                                            
                                    <h4><b>Salesforce.com Navigation-Overview</b></h4><br>
                                    <li>Salesforce Certifications</li>
                                    <li>Certified force.com Developer</li>
                                    <li>Certified Administration</li>
                                    <li>Certified Advanced Force.com</li><br>
                                             
                                    <h4><b>Database Introduction </b></h4><br>
                                    <li> Database Model-Object Creation</li>
                                    <li>Salesforce Building Blocks</li>
                                    <li>Standard Objects</li>
                                    <li>Create custom objects,fields and tabs</li>
                                    <li>CRM functionality in Salesforce and use of standard objects</li>
                                    <li>Custom Objects v/s Standard Objects</li><br>
                                             
                                    <h4><b>Types of Tab</b></h4><br>
                                    <li>Standard Objects-Account,Contacts,Leads,Campaigns,Opportunities etc..</li>
                                    <li>Custom Object Tabs</li>
                                    <li>Web and Visual force tabs</li><br>
                                             
                                    <h4><b>Custom Application</b></h4><br>
                                    <li>Field creation and its Relationships</li>
                                    <li>Standard Data types</li>
                                    <li>Read only Data types</li><br>
                                             
                                    <h4><b>Relational Data types</b></h4><br>
                                    <li>LookUp Vs. Master-Detail Relationship</li>
                                    <li>Required, External Id, Default Value and Unique fields</li><br>
                                             
                                    <h4><b>Salesforce Application elements</b></h4><br>
                                    <li>Home, Page, Tabs, Tab home Pages, Detail Page, Side Bar, Apps, Record</li>
                                    <li>Page Layouts</li>
                                    <li>Defining Page Layouts,required and read only fields</li>
                                    <li>Field order changes</li>
                                    <li>Adding custom buttons and links</li>
                                    <li>Adding related list</li><br>
                                             
                                    <h4><b>Record Types</b></h4><br>
                                    <li>To create and maintain record type of your organization</li>
                                    <li>Uses of record types</li><br>
                                             
                                    <h4><b>Field Dependencies</b></h4><br>
                                    <li>Controlling field/Dependent field</li>
                                    <li>Making dependent pick list fields</li><br>
                                             
                                    <h4><b>Validation Rules</b></h4><br>
                                    <li>Defining Salesforce Data validation</li>
                                    <li>Creating Custom Validation Rules</li>
                                    <li>Validation v/s Trigger</li><br>
                                             
                                    <h4><b>Workflow Rules</b></h4><br>
                                    <li>Define Workflow</li>
                                    <li>Create Email Template</li>
                                    <li>Set up Workflow rules</li>
                                    <li>Set up Workflow actions</li>
                                    <li>Set up Workflow actions</li><br>
                                             
                                    <h4><b>Workflow approval process</b></h4><br>
                                    <li>Plan approvals using Workflow</li>
                                    <li>Use the approval wizard-standard v/s jump start</li>
                                    <li>Create Workflow approvals</li><br>
                                             
                                    <h4><b>Email Templates</b></h4><br>
                                    <li>Email templates- Sending single and mails</li>
                                    <li>Types of templates-HTML, Custom HTML, Visual force Email Templates</li><br>
                                             
                                    <h4><b>Data Management</b></h4><br>
                                    <li>Import Wizard v/s Data Loader</li>
                                    <li>Importing Overview</li>
                                    <li>Exporting Overview</li>
                                    <li>Import custom object records using data loader</li>
                                    <li>Using Mass delete</li>
                                    <li>Use Storage</li><br>
                                             
                                    <h4><b>Personal Storage</b></h4><br>
                                    <li>Managing personal information</li>
                                    <li>Password Reset</li>
                                    <li>User Management Overview</li>
                                    <li>Roles,Users,Profiles & Sharing</li><br>
                                             
                                    <h4><b>Users,Roles and Profiles</b></h4><br>
                                    <li>Creating Users</li>
                                    <li>User Licenses Overview</li>
                                    <li>Understanding Record Ownership and Access</li>
                                    <li>Role Hierarchy</li>
                                    <li>Profiles</li><br>
                                             
                                    <h4><b>Security</b></h4><br>
                                    <li>Managing the Users</li>
                                    <li>Set Organization Wide Defaults(OWD)</li>
                                    <li>Object-level Security</li>
                                    <li>Field-level Security</li>
                                    <li>Record-level Security</li>
                                    <li>Sharing Rules</li><br>
                                             
                                    <h4><b>Development</b></h4><br>
                                    <li>Introduction to OOPS concepts</li><br>
                                             
                                    <h4><b>MVC Architecture</b></h4><br>
                                    <li>Model</li>
                                    <li>View</li>
                                    <li>Controller</li><br>
                                             
                                    <h4><b>Apex Programming Overview</b></h4><br>
                                    <li>CSS Introduction</li>
                                    <li>JavaScript Introduction</li>
                                    <li>Internal</li>
                                    <li>External</li><br>
                                             
                                    <h4><b>Static Resource</b></h4><br>
                                    <li>Adding External CSS files to the static resource</li>
                                    <li>Apex, Stylesheet</li>
                                    <li>Adding External Javascript files to the static resources </li>
                                    <li>Apex, Includescript</li><br>
                                             
                                    <h4><b>Apex Creation - Calling</b></h4><br>
                                    <li>Defining Class</li>
                                    <li>Access Specifiers</li>
                                    <li>Method Declarations</li>
                                    <li>Debugging results</li>
                                    <li>Naming conventions & code Commenting</li><br>

                                    <h4><b>Data Types</b></h4><br>
                                    <li>Primitives</li>
                                    <li>Collections(List,Set and Map)</li>
                                    <li>Subject</li><br>

                                    <h4><b>CONTROLLERS</b></h4><br>
                                    <li>Standard Controller</li>
                                    <li>Record setvar</li>
                                    <li>Custom Controller</li>
                                    <li>SQL Query data with SQL and place them on Pages </li>
                                    <li>Custom Save Functionality</li>
                                    <li>With sharing class vs. Without sharing class</li>
                                    <li>User mode Execution vs. System mode Execution</li><br>

                                    <h4><b>Extensions</b></h4><br>
                                    <li>Save- Standard controller with extension sample</li><br>

                                    <h4><b>Wrapper Class</b></h4><br>
                                    <li>Display multi object data</li>              
                                    <li>Adding check boxes to the data and perform related operations</li><br>

                                    <h4><b>View State</b></h4><br>
                                    <li>Inner queries and Relational queries</li><br>

                                    <h4><b>Triggers</b></h4><br>
                                    <li>Trigger Events</li>
                                    <li>Trigger Overview</li>
                                    <li>Defining triggers in Salesforce</li>
                                    <li>Trigger Context Variable</li><br>

                                    <h4><b>Ajax Components & its related components</b></h4><br>
                                    <li>Action Function</li>
                                    <li>Action Support</li>
                                    <li>Action Region</li>
                                    <li>Action Polar</li>
                                    <li>Action Status</li>
                                    <li>Re-render</li>
                                    <li>Render</li>
                                    <li>Facet</li>
                                    <li>Output Panel</li><br>

                                    <h4><b>Packages</b></h4><br>
                                    <li>Package Overview</li>
                                    <li>Defining Overview</li>
                                    <li>Package Types</li><br>

                                    <h4><b>Force.com Sites - Public website building</b></h4><br>
                                    <li>Building public website for the external users</li><br>

                                    <h4><b>Batch Apex</b></h4><br>
                                    <li>Batch apex Use and its Methods</li><br>

                                    <h4><b>Scheduling Apex</b></h4><br>
                                    <li>Scheduling apex use and its methods</li>
                                    <li>Limitations</li><br>

                                    <h4><b>Different Sandboxes</b></h4><br>
                                    <li>Sandbox vs. Production Environments</li>
                                    <li>Change Sets</li>
                                    <li>Limitations</li><br><br>       
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