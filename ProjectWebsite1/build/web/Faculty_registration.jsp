<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>Registration Form</title>

    <!-- Icons font CSS-->
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="css/main_2.css" rel="stylesheet" media="all">
</head>

<body>
     
    <div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
        <div class="wrapper wrapper--w680">
            <center><img src="img/JSTC logo3.png" alt="" title="" /><br><br></center>
            <div class="card card-4">
                <div class="card-body">
                   
                   <h2 class="title" style="width: 100%;
  display: block;
  font-family: Raleway-Black;
  font-size: 30px;
  color: #333333;
  line-height: 1.2;
  text-align: center;
  padding-bottom: 45px;"><b>Registration Form</b></h2>
  <form action="Faculty_Registration_logic.jsp" method="POST">
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Name </label>
                                    <input class="input--style-4" type="text" name="faculty_name">
                                </div>
                           
                        </div>
                        </div>
                                                <div class="row row-space">
                            
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Gender</label>
                                    <div class="p-t-10">
                                        <label class="radio-container m-r-45">Male
                                            <input type="radio" checked="checked" name="gender" value="Male">
                                            <span class="checkmark"></span>
                                        </label>
                                        <label class="radio-container">Female
                                            <input type="radio" name="gender" value="Female">
                                            <span class="checkmark"></span>
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                          <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">User-Id</label>
                                    <input class="input--style-4" type="text" name="user_id">
                                </div>
                            </div>
                            
                        </div>
                        
                        
                         <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Password</label>
                                    <input class="input--style-4" type="password" name="password" minlength="8" maxlength="16">
                                </div>
                            </div>
                        </div>
                          
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Designation</label>
                                    <input class="input--style-4" type="text" name="designation">
                                </div>
                            </div>
                            
                        </div>
                        
                       
                            
                      
                        
                        
                          
                        
                        
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Department</label>
                             
                                    <select class="input--style-4" name="department">
                                         <option value="ComputerApplication">Computer Application</option>
                                         <option value="ComputerScience">Computer Science</option>
                                         <option value="Electronics">Electronics</option>
                                         <option value="Mechanical">Mechanical</option>
                                         <option value="Civil">Civil</option>
                                         <option value="M.Tech">M.Tech</option>
                                         <option value="PhD">PhD</option>
                                    </select>
                                </div>
                            </div>
                            
                        </div>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Contact</label>
                                    <input class="input--style-4" type="text" name="faculty_contact" maxlength="10" minlength="10">
                                </div>
                            </div>
                            
                        </div>
                            
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Email</label>
                                    <input class="input--style-4" type="text" name="email">
                                </div>
                            </div>
                            
                        </div>
                        
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Address</label>
                                    <input class="input--style-4" type="text" name="permanent">
                                </div>
                            </div>
                            
                        </div>
                        
                         <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label><h4>Security Questions</h4></label><br>
                                    <label class="label">My First Mobile Number</label>
                                    <input class="input--style-4" type="text" name="firstmobile" maxlength="10" minlength="10">
                                </div>
                            </div>
                            
                        </div>
                        
                         <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">My Favorite Food</label>
                                    <input class="input--style-4" type="text" name="food">
                                </div>
                            </div>
                            
                        </div>

                        
                        
                        
                        
                         <div class="p-t-15">
                            <button class="btn btn--radius-2 btn--blue" type="Register">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Jquery JS-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="vendor/select2/select2.min.js"></script>
    <script src="vendor/datepicker/moment.min.js"></script>
    <script src="vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="js/global.js"></script>

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<!-- end document-->