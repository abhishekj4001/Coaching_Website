
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

<div id="sidebar"> <a href="#" class="visible-phone"><i class="icon icon-th"></i>Tables</a>
  <ul>
    <li><a href="index_2.jsp"><i class="icon icon-home"></i> <span>Dashboard</span></a> </li>
    <li> <a href="personalDetails.jsp"><i class="icon icon-signal"></i> <span>Personal Details</span></a> </li>
    <li> <a href="TimeTable.jsp"><i class="icon icon-inbox"></i> <span>Time-Table</span></a> </li>
    <li><a href="Attendance.jsp"><i class="icon icon-th"></i> <span>Attendance</span></a></li>
    <li><a href="Assignments.jsp"><i class="icon icon-fullscreen"></i> <span>My Assignments</span></a></li>
    <li class="active"><a href="result.jsp"><i class="icon icon-fullscreen"></i> <span>Result</span></a></li>
    <li><a href="login.jsp"><i class="icon icon-fullscreen"></i> <span>Logout</span></a></li>
   
  </ul>
</div>
<div id="content">
  <div id="content-header">
    <div id="breadcrumb"> <a href="index_2.jsp" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="#" class="current">Result</a> </div>
    <h1>Result</h1>
  </div>
  <div class="container-fluid">
    <hr>
    
        <div class="widget-box">
    <!--      <div class="widget-title"> <span class="icon"><i class="icon-th"></i></span>
           
          </div>  -->
          <div class="widget-content nopadding">
            <table class="table table-bordered ">
              <thead>
                  
                <tr>
                <th><h5>Scholar Number</h5></th>
                  <th><h5>Subject</h5></th>
                <th><h5>Mini-Marks</h5></th>
                 <th><h5>Mid-Marks</h5></th>
                  <th><h5>End-Term Marks</h5></th>
                  <th><h5>Last Update</h5></th>
                </tr>
              </thead>
              <%
                  try
                  {
                       String name=(String)session.getAttribute("userid");
                      Class.forName("com.mysql.jdbc.Driver");
                      Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/majorproject","root","abhishek");
                      
                      String query1="select scholarno,semester from student where userid=?";
                          PreparedStatement pstmt=con.prepareStatement(query1);
                          pstmt.setString(1,name);
                          ResultSet rtst1=pstmt.executeQuery();
                          int semester=0,scholar=0;
                          while(rtst1.next())
                          {
                              scholar=rtst1.getInt(1);
                              semester=rtst1.getInt(2);
                          }
                String query11=null;
                if(semester==1)
                {
                  query11="select scholarno,subject,mini,mid,endterm,date from firstsemresult where scholarno=?";
                 
                }
                else if(semester==2)
                {
                    query11="select scholarno,subject,mini,mid,endterm,date from secondsemresult where scholarno=?";
                }
                else if(semester==3)
                {
                    query11="select scholarno,subject,mini,mid,endterm,date from thirdsemresult where scholarno=?";
                }
                else if(semester==4)
                {
                    query11="select scholarno,subject,mini,mid,endterm,date from fourthsemresult where scholarno=?";
                }
                else if(semester==5)
                {
                    query11="select scholarno,subject,mini,mid,endterm,date from fifthsemresult where scholarno=?";
                }
                else if(semester==6)
                {
                    query11="select scholarno,subject,mini,mid,endterm,date from sixthsemresult where scholarno=?";
                }
                else 
                {
                    System.out.println("Error occurred");
                }
                      pstmt=con.prepareStatement(query11);
                      pstmt.setInt(1,scholar); 

                      ResultSet rtst=pstmt.executeQuery();
                      
                      while(rtst.next())
                      {
                   
                      
                  %>
              <tbody>
                <tr class="gradeX">
                    <td><center><%= rtst.getInt(1) %></center></td>
            <td><center><%=rtst.getString(2)%></center></td>
            <td><center><%=rtst.getFloat(3)%></center></td>
            <td><center><%=rtst.getFloat(4)%></center></td>
             <td><center><%=rtst.getFloat(5)%></center></td>
            <td><center><%=rtst.getString(6)%></center></td>
            
          
                </tr>
                <% } %>
                <% 
                    }catch(Exception e) {}
%>                
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

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
