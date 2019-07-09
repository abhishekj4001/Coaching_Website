<%@page import="org.apache.tomcat.util.codec.binary.Base64"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.DataOutputStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
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
<link rel="stylesheet" href="css/matrix-style.css" />
<link rel="stylesheet" href="css/matrix-media.css" />
<link href="font-awesome/css/font-awesome.css" rel="stylesheet" />
  <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css'>
  <link rel="stylesheet" href="css/style.css">
  
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>
<style>
    .row {
  display: -webkit-box;
  display: -webkit-flex;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-flex-wrap: wrap;
  -ms-flex-wrap: wrap;
  flex-wrap: wrap;
}

.row-space {
  -webkit-box-pack: justify;
  -webkit-justify-content: space-between;
  -moz-box-pack: justify;
  -ms-flex-pack: justify;
  justify-content: space-between;
}
.col-2 {
  width: -webkit-calc((100% - 30px));
  width: -moz-calc((100% - 30px));
  width: calc((100% - 200px));
}

@media (max-width: 767px) {
  .col-2 {
    width: 100%;
  }

</style>
<script>

    function enable() {

document.getElementById("name1").disabled = false;
document.getElementById("name2").disabled = false;
document.getElementById("name3").disabled = false;
document.getElementById("name4").disabled = false;
document.getElementById("name5").disabled = false;
document.getElementById("name6").disabled = false;
document.getElementById("name7").disabled = false;
document.getElementById("name8").disabled = false;
document.getElementById("name9").disabled = false;
}
    </script>
     
</head>
<body>

<!--Header-part-->
<div id="header">
    <br>
   <a href="index.jsp"><img src="img/JSTC logo3.png" alt="" title="" /></a>
</div>
<!--close-Header-part--> 

<!--close-top-serch--> 

<!--sidebar-menu-->

<div id="sidebar"> <a href="#" class="visible-phone"><i class="icon icon-signal"></i>Personal Details</a>
  <ul>
    <li><a href="index_2.jsp"><i class="icon icon-home"></i> <span>Dashboard</span></a> </li>
    <li class="active"> <a href="personalDetails.jsp"><i class="icon icon-signal"></i> <span>Personal Details</span></a> </li>
    <li> <a href="TimeTable.jsp"><i class="icon icon-inbox"></i> <span>Time-Table</span></a> </li>
    <li><a href="Attendance.jsp"><i class="icon icon-th"></i> <span>Attendance</span></a></li>
    <li><a href="Assignments.jsp"><i class="icon icon-fullscreen"></i> <span>My Assignments</span></a></li>
    <li><a href="result.jsp"><i class="icon icon-fullscreen"></i> <span>Result</span></a></li>
    <li><a href="login.jsp"><i class="icon icon-fullscreen"></i> <span>Logout</span></a></li>
   
  </ul>
</div>
<div id="content">
  <div id="content-header">
    <div id="breadcrumb"><a href="index_2.jsp" title="Go to Home" class="tip-bottom"><i class="icon-home"></i> Home</a> <a href="#" class="current">Profile</a></div>
    <h1>Personal Details</h1>
  </div>

        <div class="  p-b-100 font-poppins">
        <div class="wrapper--w680">
    
            <div class="">
                <div class="card-body"> 
                    
   <form action="UploadImage.do" method="post" enctype="multipart/form-data">
                        


  <div class="container">  
      <%! String user;%>
  <%
               user=(String)session.getAttribute("userid");
              
                Class.forName("com.mysql.jdbc.Driver");
                Connection con1= DriverManager.getConnection("jdbc:mysql://localhost:3306/majorproject", "root", "abhishek");
        
                String query1 = "Select image from profile where userid=?";
                 
                PreparedStatement pstmt1 = con1.prepareStatement(query1);
                pstmt1.setString(1,user);
               
                String imageStr="";
                ResultSet rtst1 = pstmt1.executeQuery();
                while(rtst1.next())
                {
                    Blob imageBlob = rtst1.getBlob("image");
                    if(imageBlob!=null){
                    byte [] bytes = imageBlob.getBytes(1l, (int)imageBlob.length());
                    imageStr = "data:image/png;base64,"+Base64.encodeBase64String(bytes);
                    }
                 }
                
      %>

      <img  src="<%=imageStr%>" class="photo__frame photo__frame--circle" style="margin-left: 50px;">   
</div>  
<h6 style="padding-left:40px;">*Insert passport size image only!</h6>
  <br>
  
  <input type="file" name="imageupload" style="margin-left: 80px"><br>
  <input type="hidden" name="pname" value="<%= (String)session.getAttribute("userid") %>"
       
  <div class="row-space">
                        <div class="p-t-15">
            <button class="btn btn--radius" style="background: #4272d7;color: #fff;
  font-family: Poppins, Arial, Helvetica,Neue,sans-serif; border-radius: 5px; display: inline-block;
  line-height: 40px;
  padding: 0 5px 0 5px;
  font-size: 15px;
  margin-left: 80px;"; type="Register">Upload</button>
                </div>
            </div>  
</form> 
  
 <form action="personaldetails_logic.jsp" method="post"> 
  
                       <% 
                        try
                        {
                         String id=(String)session.getAttribute("userid");
                        
                          Class.forName("com.mysql.jdbc.Driver");
                          Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/majorproject","root","abhishek");
                          String query="select scholarno,semester, sname,department, fname,mname,contact,email,address from student where userid=?;";
                          PreparedStatement pstmt = con.prepareStatement(query);
                          pstmt.setString(1,id);
                          ResultSet rtst=pstmt.executeQuery();
                          while(rtst.next())
                          {
                        
                       %>
                       
                         <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label><h5>Scholar no.</h5></label>
                                    <input class="input--style-4" id="name1" type="text" name="scholar"
                                           value="<%=rtst.getInt(1)%>" disabled>
                                </div>
                           
                        </div>
                         </div>
                                <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label><h5>Semester</h5></label>
                                    <input class="input--style-4" id="name9" type="text" name="semester"
                                           value="<%=rtst.getInt(2)%>" disabled>
                                </div>
                           
                        </div>
                         </div>
                             <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class=""><h5>Student Name</h5></label>
                                    <input class="input--style-4" id="name2" type="text" name="student_name"
                                           value="<%=rtst.getString(3)%>" disabled>
                                </div>
                            </div>
                            
                        </div>
                         
                        
                         <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class=""><h5>Department Name</h5></label>
                                    <input class="input--style-4" id="name3" value="<%=rtst.getString(4)%>" disabled type="text" name="department">
                                </div>
                            </div>
                        </div>
                          
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class=""><h5>Father Name</h5></label>
                                    <input class="input--style-4" id="name4" value="<%=rtst.getString(5)%>" disabled type="text" name="fathername">
                                </div>
                            </div>
                            
                        </div>
                        
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class=""><h5>Mother Name</h5></label>
                                    <input class="input--style-4" id="name5" value="<%=rtst.getString(6)%>" disabled type="text" name="mothername" maxlength="10">
                                </div>
                            </div>
                            
                        </div>
                        
                         <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class=""><h5>Contact</h5></label>
                                    <input class="input--style-4" id="name6" value="<%=rtst.getString(7)%>" disabled type="text" name="contact">
                                </div>
                            </div>
                            
                        </div>
                        
                        
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class=""><h5>Email Id</h5></label>
                                    <input class="input--style-4" id="name7" value="<%=rtst.getString(8)%>" disabled type="text" name="email">
                                </div>
                            </div>
                            
                        </div>
                            
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class=""><h5>Address</h5></label>
                                    <input class="input--style-4" id="name8" value="<%=rtst.getString(9)%>" disabled type="text" name="permanent">
                                </div>
                            </div>
                            
                        </div>
                         <% } 

                        
                         %>
              <% 
                  }catch(Exception e) {}
%>
                 <br>
                  <div class="row row-space">
                        <div class="p-t-15">
            <button class="btn btn--radius-2" style="background: #4272d7;color: #fff;
  font-family: Poppins, Arial, Helvetica,Neue,sans-serif; border-radius: 5px; display: inline-block;
  line-height: 40px;
  padding: 0 50px;
  font-size: 18px;"; type="Register">Submit</button>
                </div>
            </div>  
                </div>
                    </form>
                 <br> <div class="row row-space">
                        <div class="p-t-15">
                     <button class="btn btn--radius-2" style="background: #4272d7;color: #fff;
  font-family: Poppins, Arial, Helvetica,Neue,sans-serif; border-radius: 5px; display: inline-block;
  line-height: 40px;
  padding: 0 50px;
  font-size: 18px;"; type="Register" onclick="enable()">Edit</button>
                        </div>
                        </div>
                </div>
            </div>
        </div>
    
    
    
    
</div>

<script src="js/jquery.min.js"></script> 
<script src="js/bootstrap.min.js"></script> 
<script src="js/jquery.flot.min.js"></script> 
<script src="js/jquery.flot.pie.min.js"></script> 
<script src="js/matrix.personalDetails.js"></script> 
<script src="js/jquery.flot.resize.min.js"></script> 
<script src="js/matrix.js"></script> 
<script src="js/jquery.peity.min.js"></script> 
<script src="js/matrix.dashboard.js"></script>
  <script src='https://code.jquery.com/jquery-2.2.4.min.js'></script>

  

    <script  src="js/index.js"></script>
 
</body>
</html>
