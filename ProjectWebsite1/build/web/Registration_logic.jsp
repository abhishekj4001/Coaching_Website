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
                String student_name=request.getParameter("student_name").trim();
                String gender=request.getParameter("gender").trim();
                String user_id=request.getParameter("user_id").trim();
                String password=request.getParameter("password").trim();
                String father_name=request.getParameter("fathername").trim();
                String mother_name=request.getParameter("mothername").trim();
                int scholar_no=new Integer(request.getParameter("scholar").trim());
                int semester=new Integer(request.getParameter("semester").trim());
                String department=request.getParameter("department").trim();
                long stud_contact=new Long(request.getParameter("stud_contact").trim());
                String email=request.getParameter("email").trim();
                String permanent_address=request.getParameter("permanent").trim();
                String security=request.getParameter("security").trim();
                String food=request.getParameter("food").trim();
                
                
                
                Class.forName("com.mysql.jdbc.Driver");
                Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/majorproject", "root", "abhishek");
                 
                String query = "Insert into student values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
                String query1="Insert into login values(?,?)";
                String query2="Insert into profile(userid) values(?)";
                PreparedStatement pstmt = con.prepareStatement(query);
                PreparedStatement pstmt1 = con.prepareStatement(query1);
                PreparedStatement pstmt2 = con.prepareStatement(query2);
                pstmt.setString(1,student_name);
                pstmt.setString(2,user_id);
                pstmt.setString(3,password);
                pstmt.setString(4,father_name);
                pstmt.setString(5,mother_name);
                pstmt.setInt(6,scholar_no);
                pstmt.setString(7,department);

                pstmt.setLong(8,stud_contact);
                pstmt.setString(9,email);
                pstmt.setString(10,permanent_address);
                pstmt.setInt(11,semester);
                pstmt.setString(12,gender);
                pstmt.setString(13,security);
                pstmt.setString(14,food);
               
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
                
            }
            %>
    </body>
</html>
