<%-- 
    Document   : personaldetails_logic
    Created on : Feb 16, 2019, 9:38:22 AM
    Author     : Akshat
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
           try
           { 
               
              String id=session.getAttribute("userid").toString();
           
                 String facultyname=request.getParameter("faculty_name").trim();
                
                 String designation=request.getParameter("designation").trim();
               
                 String department=request.getParameter("department").trim(); 
                 
               long contact=new Long(request.getParameter("contact").trim());
                String email=request.getParameter("email").trim();
                String permanent_address=request.getParameter("permanent").trim();
               
                
                          Class.forName("com.mysql.jdbc.Driver");
                          Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/majorproject","root","abhishek");
                          String query1="update facultyregister set name=?,designation=?,department=?,contact=?,email=?,address=? where userid=?;";
                          PreparedStatement pstmt = con.prepareStatement(query1);
                          pstmt.setString(1,facultyname);
                          pstmt.setString(2,designation);
                          pstmt.setString(3,department);
                          
                          pstmt.setLong(4,contact);
                          
                          pstmt.setString(5,email);
                          pstmt.setString(6,permanent_address);
                          pstmt.setString(7,id);
                          pstmt.executeUpdate();
                          RequestDispatcher rd=request.getRequestDispatcher("faculty_personalDetails.jsp");
                          rd.forward(request,response); 
               
           }
            catch(Exception e)
            {
                
            }
            %>
            
    </body>
</html>
