<%-- 
    Document   : Login_logic
    Created on : 3 Dec, 2018, 8:54:37 AM
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
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try
            {
                String username=request.getParameter("username").trim().toLowerCase();
                String password=request.getParameter("pass").trim();
                String profile=request.getParameter("profile").trim();
                Class.forName("com.mysql.jdbc.Driver");
                Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/majorproject", "root", "abhishek");
                 
            if(profile.equals("Student"))
            {
              
                String query = "Select * from login where username=? and password=?;";
                PreparedStatement pstmt = con.prepareStatement(query);
                pstmt.setString(1,username);
                pstmt.setString(2,password);
                ResultSet rtst = pstmt.executeQuery();
                if(rtst.next()) {
                    
                   
                  session.setAttribute("userid",rtst.getString(1));
                  session.setAttribute("password",rtst.getString(2));
                  String name=(String)session.getAttribute("userid");
                  String pass=(String)session.getAttribute("password");
                  if(username.equals(name.trim()) && password.equals(pass.trim()))
                  {
                       RequestDispatcher rd=request.getRequestDispatcher("index_2.jsp");
               
                        rd.forward(request,response);  
                   
                  }
                 
                }
                else
                {
                  
                    request.setAttribute("Errormessage","* Invalid userid or password");
                    RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
                    rd.forward(request,response);
                    
                }
             
            }
            else
            {
                    
                String query = "Select * from loginfaculty where userid=? and password=?;";
                PreparedStatement pstmt = con.prepareStatement(query);
                pstmt.setString(1,username);
                pstmt.setString(2,password);
                ResultSet rtst = pstmt.executeQuery();
                if(rtst.next()) {
                    
                   
                  session.setAttribute("userid",rtst.getString(1));
                  session.setAttribute("password",rtst.getString(2));
                  String name=(String)session.getAttribute("userid");
                  String pass=(String)session.getAttribute("password");
                  if(username.equals(name.trim()) && password.equals(pass.trim()))
                  {
                       RequestDispatcher rd=request.getRequestDispatcher("faculty_index_2.jsp");
               
                        rd.forward(request,response);  
                   
                  }
                 
                }
                else
                {
                    request.setAttribute("Errormessage","* Invalid userid or password");
                    RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
                    rd.forward(request,response);
                }
                    
            }
            }
            catch(Exception e)
            {
                
            }
            
            %>
    </body>
</html>
