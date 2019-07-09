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
<div id="sidebar"> <a href="#" class="visible-phone"><i class="icon icon-inbox"></i>Assignments</a>
  <ul>
     <li><a href="index_2.jsp"><i class="icon icon-home"></i> <span>Dashboard</span></a> </li>
    <li> <a href="personalDetails.jsp"><i class="icon icon-signal"></i> <span>Personal Details</span></a> </li>
    <li> <a href="TimeTable.jsp"><i class="icon icon-inbox"></i> <span>Time-Table</span></a> </li>
    <li><a href="Attendance.jsp"><i class="icon icon-th"></i> <span>Attendance</span></a></li>
    <li  class="active"><a href="Assignments.jsp"><i class="icon icon-fullscreen"></i> <span>My Assignments</span></a></li>
    <li><a href="result.jsp"><i class="icon icon-fullscreen"></i> <span>Result</span></a></li>
    
    <li><a href="login.jsp"><i class="icon icon-fullscreen"></i> <span>Logout</span></a></li>
   
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
                  <th colspan="2"><h5>Upload Assignments PDF</h5></th>
                 <th colspan="2"><h5>Download Assignments PDF</h5></th>
                 
                </tr>
                  <%
                      try
                      {
                          Class.forName("com.mysql.jdbc.Driver");
                          Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/majorproject","root","abhishek");
                          String query="select subjects from assignments where semester=?;";
                        
                         
                          String name=(String)session.getAttribute("userid");
                          String query1="select semester,scholarno from student where userid=?";
                          PreparedStatement pstmt=con.prepareStatement(query1);
                          pstmt.setString(1,name);
                          ResultSet rtst1=pstmt.executeQuery();
                          int sem=0,scholarno=0;
                          while(rtst1.next())
                          {
                               sem=rtst1.getInt(1);
                               scholarno=rtst1.getInt(2);
                          }
                           
                          pstmt=con.prepareStatement(query);
                          pstmt.setInt(1,sem);
                          ResultSet rtst=pstmt.executeQuery();
                          
                                
                      
                      %>
               
               
              </thead>
                  <% 
                      int i=1;
                      String subject1=null,subject2=null,
                              subject3=null,subject4=null,subject5=null;
                  while(rtst.next())
                  {
                    if(i==1)
                    {
                        subject1=rtst.getString(1);
                        i=i+1;
                    }
                    else if(i==2)
                    {
                        subject2=rtst.getString(1);
                        i=i+1;
                    }
                    else if(i==3)
                    {
                       subject3=rtst.getString(1);
                        i=i+1;
                    }
                    else if(i==4)
                    {
                        subject4=rtst.getString(1);
                        i=i+1;
                    }
                    else if(i==5)
                    {
                        subject5=rtst.getString(1);
                       
                    }
                  }
                  %>
              
              <tbody>
              <form action="UploadDoc" method="post" enctype="multipart/form-data" >
          
                 <input type="hidden" name="semester" value="<%= sem %>">
                  <input type="hidden" name="scholar" value="<%= scholarno %>">
              <tr class="odd gradeX">
                  <td colspan="2"><B><center><%=subject1%></center></B></td>
                  <td colspan="2"><center><input type="file" name="subject1pdf" id="file"></center></td>
                  <td><a href="DownloadDoc1.jsp"><center><h5>Download</h5></center></a></td>
                    
                </tr>
                 <tr class="odd gradeX">
                     <td colspan="2"><center><B><%=subject2%></B></center></td>
                  <td colspan="2"><center><input type="file" name="subject2pdf"></center></td>
                  <td><a href="DownloadDoc2.jsp"><center><h5>Download</h5></center></a></td>
                    
                </tr>
                 <tr class="odd gradeX">
                     <td colspan="2"><center><B><%=subject3%></center></B></td>
                  <td colspan="2"><center><input type="file" name="subject3pdf"></center></td>
                  <td><center><a href="DownloadDoc3.jsp"><h5>Download</h5></center></a></td>
                    
                </tr>
                 <tr class="odd gradeX">
                     <td colspan="2"><center><B><%=subject4%></B></center></td>
                  <td colspan="2"><center><input type="file" name="subject4pdf"></center></td>
                  <td><center><a href="DownloadDoc4.jsp"><h5>Download</h5></center></a></td>
                    
                </tr>
                 <tr class="odd gradeX">
                     <td colspan="2"><center><B><%=subject5%></B></center></td>
                  <td colspan="2"><center><input type="file" name="subject5pdf"></center></td>
                  <td><center><a href="DownloadDoc5.jsp"><h5>Download</h5></a></center></td>
                    
                </tr>
                <tr  class="odd gradeX">
                    <td colspan="5">  <center><input type="submit" value="Upload" id="upload"></center></td>
                </tr>
                
              </form>
              </tbody>

              <% 
                  }catch(Exception e) {}
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
