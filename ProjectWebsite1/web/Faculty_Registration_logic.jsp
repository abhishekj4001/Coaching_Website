<%-- 
    Document   : Registration_logic
    Created on : 4 Dec, 2018, 8:36:48 AM
    Author     : Abhishek
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Logic</title>
    </head>
    <body>
        <%
            try
            {
                String faculty_name=request.getParameter("faculty_name").trim();
                String gender=request.getParameter("gender").trim();
                String user_id=request.getParameter("user_id").trim();
                String password=request.getParameter("password").trim();
                String designation=request.getParameter("designation").trim();
                String department=request.getParameter("department").trim();
                long faculty_contact=new Long(request.getParameter("faculty_contact").trim());
                String email=request.getParameter("email").trim();
                String permanent_address=request.getParameter("permanent").trim();
                Long first_mobile=new Long(request.getParameter("firstmobile").trim());
                String food=request.getParameter("food").trim();
                
                Class.forName("com.mysql.jdbc.Driver");
                Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/majorproject", "root", "abhishek");
                 
                String query = "Insert into facultyregister values(?,?,?,?,?,?,?,?,?,?,?);";
                String query1="Insert into loginfaculty values(?,?)";
                 String query2="Insert into facultyprofile(userid) values(?)";
                PreparedStatement pstmt = con.prepareStatement(query);
                PreparedStatement pstmt1 = con.prepareStatement(query1);
                PreparedStatement pstmt2 = con.prepareStatement(query2);
                pstmt.setString(1,faculty_name);
                pstmt.setString(3,user_id);
                pstmt.setString(4,password);
                pstmt.setString(5,designation);
                pstmt.setString(6,department);
                pstmt.setLong(7,faculty_contact);
                pstmt.setString(8,email);
                pstmt.setString(9,permanent_address);
                pstmt.setString(2,gender);
                pstmt.setString(10,food);
                pstmt.setLong(11,first_mobile);
               
                pstmt.executeUpdate();
                pstmt1.setString(1,user_id);
                pstmt1.setString(2,password);
                pstmt1.executeUpdate();
                
                pstmt2.setString(1,user_id);
                pstmt2.executeUpdate();
                RequestDispatcher rd=request.getRequestDispatcher("index.jsp");
               
                        rd.forward(request,response); 
                
            }
            catch(Exception e)
            {
                System.out.println("Error Occured");
            }
            %>
    </body>
</html>
