<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Dashboard</title>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/bootstrap-responsive.min.css" />
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

<!--sidebar-menu-->

<!--main-container-part-->
<div id="content">
  <div id="content-header">
    <div id="breadcrumb"> <a href="index_2.jsp" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="#" class="current">Assignments</a> </div>
    <h1>Subject-Wise Assignments</h1>
  </div>
    <div class="container-fluid">
    <hr>
    <div class="row-fluid">
      <div class="span12">
        <div class="widget-box">
          <div class="widget-content nopadding">
            <table class="table table-bordered table-striped">
                
              <thead>
                   <tr>
                       <th colspan="2"><H5>Subjects</H5></th>
                  <th colspan="2"><H5>Scholar No.</H5></th>
                 <th colspan="2"><h5>Download Assignments PDF</h5></th>
                 <th colspan="2"><h5>Last Update</h5></th>
                 
                </tr>
                  <%
                  
                   String subjectname=request.getParameter("Subject");
                   
                session.setAttribute("subcode",subjectname);
             
                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                    Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/majorproject", "root", "abhishek");
                    String query="select scholarno,date from uploadpdf where subject=?";
                    PreparedStatement pstmt=con.prepareStatement(query);   
                    pstmt.setString(1,subjectname);
                    ResultSet rtst=pstmt.executeQuery();
                    while(rtst.next())
                    {
                        session.setAttribute("num",rtst.getInt(1));
               %>
               
               
              </thead>
            
              <tbody>
             
          
                 
              <tr class="odd gradeX">
                  <td colspan="2"><B><center><%=subjectname%></center></B></td>
                   <td colspan="2"><B><center><%=rtst.getInt(1)%></center></B></td>
                  <td><a href="dwnldassgnmnt.jsp"><center><h5>Download</h5></center></a></td>
                   <td colspan="2"><B><center><%=rtst.getString(2)%></center></B></td>
                  
                </tr>
                 
                
                
                 
               
                
              
              </tbody>
 <%    }
                }
               catch(Exception e)
               {
                   
               }
                                
                      
                      %>

            </table>
          </div>
        </div>
    </div>
  
<!--main-container-part-->


<script src="js/jquery.min.js"></script> 
<script src="js/bootstrap.min.js"></script> 
<script src="js/jquery.ui.custom.js"></script> 
<script src="js/matrix.js"></script>
</body>
</html>

      
           
   