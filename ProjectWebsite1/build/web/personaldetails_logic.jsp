<%-- 
    Document   : personaldetails_logic
    Created on : Feb 16, 2019, 9:38:22 AM
    Author     : Akshat
--%>

<%@page import="java.io.PrintWriter"%>
<%@page import="java.io.InputStream"%>
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
                int scholar_no=new Integer(request.getParameter("scholar").trim());
           int sem=new Integer(request.getParameter("semester").trim());
                String student_name=request.getParameter("student_name").trim();
                String department=request.getParameter("department").trim();
                String father_name=request.getParameter("fathername").trim();
                String mother_name=request.getParameter("mothername").trim();
                long contact=new Long(request.getParameter("contact").trim());
                String email=request.getParameter("email").trim();
                String permanent_address=request.getParameter("permanent").trim();
               
                
                
                          Class.forName("com.mysql.jdbc.Driver");
                          Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/majorproject","root","abhishek");
                          String query1="update student set scholarno=?,sname=?,department=?,fname=?,mname=?,contact=?,email=?,address=?,semester=? where userid=?;";
                          PreparedStatement pstmt = con.prepareStatement(query1);
                          pstmt.setInt(1,scholar_no);
                          pstmt.setString(2,student_name);
                          pstmt.setString(3,department);
                          pstmt.setString(4,father_name);
                          pstmt.setString(5,mother_name);
                          pstmt.setLong(6,contact);
                          pstmt.setString(7,email);
                          pstmt.setString(8,permanent_address);
                          pstmt.setInt(9,sem);
                          pstmt.setString(10,id);
                          pstmt.executeUpdate();
                       
                          RequestDispatcher rd=request.getRequestDispatcher("personalDetails.jsp");
                          rd.forward(request,response); 
               
           }
            catch(Exception e)
            {
                
            }
            %>
            
    </body>
</html>
