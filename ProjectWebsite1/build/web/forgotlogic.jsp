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
                String id=session.getAttribute("userid").toString();
                Long MobileNo=Long.parseLong(request.getParameter("mobileno").trim());
                String Food=request.getParameter("favoriteFood").trim();
                String newpassword=request.getParameter("newpassword").trim();
                String confirmpassword=request.getParameter("confirmpassword").trim();
                Class.forName("com.mysql.jdbc.Driver");
                Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/majorproject", "root", "abhishek");
                 
                String query = "Select FirstMobile,FavFood from student where FirstMobile=? and FavFood=?;";
                
                PreparedStatement pstmt = con.prepareStatement(query);
               
                pstmt.setLong(1,MobileNo);
                pstmt.setString(2,Food);
                ResultSet rtst = pstmt.executeQuery();
                
                String q = "Select firstmobno,food from facultyregister where firstmobno=? and food=?;";
                
                PreparedStatement p = con.prepareStatement(q);
               
                p.setLong(1,MobileNo);
                p.setString(2,Food);
                ResultSet rtst1 = p.executeQuery();
                
                if(rtst.next()) {
                    
                   
                  session.setAttribute("mobile",rtst.getLong(1));
                  session.setAttribute("favfood",rtst.getString(2));
                  Long Mobno=(Long)session.getAttribute("mobile");
                  String Favfood=(String)session.getAttribute("favfood");
                  if(MobileNo.equals(Mobno) && Food.equals(Favfood.trim()) && newpassword.equals(confirmpassword.trim()))
                  {
                       
        
                     String query1= "update student set password=? where FirstMobile=?;";
                     PreparedStatement pstmt1=con.prepareStatement(query1);
                     pstmt1.setString(1,newpassword);
                     pstmt1.setLong(2,MobileNo);
            
                     pstmt1.executeUpdate();
                     
                     String query2= "update login set password=? where username=?;";
                     PreparedStatement pstmt2=con.prepareStatement(query2);
                     pstmt2.setString(1,newpassword);
                     pstmt2.setString(2,id);
            
                     pstmt2.executeUpdate();
                
                     RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
                     rd.forward(request,response); 
                   
                  }
                  else
                  {
                      
                    RequestDispatcher rd=request.getRequestDispatcher("Error.jsp");
                    rd.forward(request,response);
                  }
                 
                }
                else if(rtst1.next())
                {
                    session.setAttribute("mobile",rtst.getLong(1));
                    session.setAttribute("favfood",rtst.getString(2));
                    Long Mobno=(Long)session.getAttribute("mobile");
                    String Favfood=(String)session.getAttribute("favfood");
                  if(MobileNo.equals(Mobno) && Food.equals(Favfood.trim()) && newpassword.equals(confirmpassword.trim()))
                  {
                       
        
                     String query1= "update facultyregister set password=? where firstmobno=?;";
                     PreparedStatement pstmt1=con.prepareStatement(query1);
                     pstmt1.setString(1,newpassword);
                     pstmt1.setLong(2,MobileNo);
            
                     pstmt1.executeUpdate();
                     
                     String query2= "update loginfaculty set password=? where userid=?;";
                     PreparedStatement pstmt2=con.prepareStatement(query2);
                     pstmt2.setString(1,newpassword);
                     pstmt2.setString(2,id);
            
                     pstmt2.executeUpdate();
                
                     RequestDispatcher rd=request.getRequestDispatcher("login.jsp");
                     rd.forward(request,response); 
                     
                     
                }
                  else
                  {
                      
                    RequestDispatcher rd=request.getRequestDispatcher("Error.jsp");
                    rd.forward(request,response);
                  }
             
            }
                else
                {
                    RequestDispatcher rd=request.getRequestDispatcher("Error.jsp");
                    rd.forward(request,response);
                }
            }
            catch(Exception e)
            {
                System.out.println("Error Occured");
            }
            %>
    </body>
</html>
