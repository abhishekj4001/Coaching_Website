<!DOCTYPE html>
<html lang="en">
<head>
<title>Dashboard</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
<link rel="stylesheet" href="css/uniform.css" />
<link rel="stylesheet" href="css/select2.css" />
<link rel="stylesheet" href="css/matrix-style.css" />
<link rel="stylesheet" href="css/matrix-media.css" />
<link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
</head>
<body>

<!--Header-part-->
<div id="header">
    <br>
   <a href="index.jsp"><img src="img/JSTC logo3.png" alt="" title="" /></a>
</div>
<!--close-Header-part--> 

<!--sidebar-menu-->

<div id="sidebar"> <a href="#" class="visible-phone"><i class="icon icon-th"></i>Attendance</a>
  <ul>
      <li class="active"><a href="faculty_index_2.jsp"><i class="icon icon-home"></i> <span>Dashboard</span></a> </li>
   <li> <a href="faculty_personalDetails.jsp"><i class="icon icon-signal"></i> <span>Personal Details</span></a> </li>
   
    <li><a href="uploadAttendance.jsp"><i class="icon icon-th"></i> <span>Upload Attendance</span></a></li>
    <li><a href="uploadassignment.jsp"><i class="icon icon-fullscreen"></i> <span>Upload Assignments</span></a></li>
    <li><a href="uploadResult.jsp"><i class="icon icon-fullscreen"></i> <span>Upload Result</span></a></li>
    <li><a href="index.jsp"><i class="icon icon-fullscreen"></i> <span>Logout</span></a></li>
   
  </ul>
</div>

<div id="content">
  <div id="content-header">
      <form action="submittedassignmnt_logic.jsp" method="post"  > 
      <br><br>
     <h2> &nbsp; &nbsp; Submitted Assignments</h2> 
     <br> <br>

     <h4>&nbsp; &nbsp;&nbsp; &nbsp;Subject Name:</h4>&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<input type="text" name="Subject"> <br><br>
     
      <br>
    &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;       <button class="btn btn--radius-2" style="background: #4272d7;color: #fff;
  font-family: Poppins, Arial, Helvetica,Neue,sans-serif; border-radius: 5px; display: inline-block;
  line-height: 40px;
  padding: 0 50px;
  font-size: 18px;"; type="Register">Submit</button>
              
               
     
     
     </form>
  </div>
</div>


    
        
       
<!--Footer-part-->

<!--end-Footer-part-->
<script src="js/jquery.min.js"></script> 
<script src="js/jquery.ui.custom.js"></script> 
<script src="js/bootstrap.min.js"></script> 
<script src="js/jquery.uniform.js"></script> 
<script src="js/select2.min.js"></script> 
<script src="js/jquery.dataTables.min.js"></script> 
<script src="js/matrix.js"></script> 
<script src="js/matrix.result.js"></script>
</body>
</html>
