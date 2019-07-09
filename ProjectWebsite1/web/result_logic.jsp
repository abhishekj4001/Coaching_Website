<%-- 
    Document   : attendance_logic
    Created on : 3 Mar, 2019, 1:01:42 PM
    Author     : Rini
--%>

<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
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
            String name=request.getParameter("name");
            int semester=new Integer(request.getParameter("Semester").trim());
            String subject=request.getParameter("Subject").trim();
            int scholarno=new Integer(request.getParameter("Scholarno").trim());
            float mini=new Float(request.getParameter("mini").trim());
            float mid=new Float(request.getParameter("mid").trim());
            float end=new Float(request.getParameter("end").trim());
       
            String query="";
            SimpleDateFormat formatter=new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
            Date date=new Date();
            String time=formatter.format(date).toString();
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/majorproject","root","abhishek");
            if(semester==1)
            {
                query="insert into firstsemresult values(?,?,?,?,?,?)";
            }
           else if(semester==2)
            {
                query="insert into secondsemresult values(?,?,?,?,?,?)";
            }
           else if(semester==3)
            {
                query="insert into thirdsemresult values(?,?,?,?,?,?)";
            }
           else if(semester==4)
            {
                query="insert into fourthsemresult values(?,?,?,?,?,?)";
            }
           else if(semester==5)
            {
                query="insert into fifthsemresult values(?,?,?,?,?,?)";
            }
           else if(semester==6)
            {
                query="insert into sixthsemresult values(?,?,?,?,?,?)";
            }
            PreparedStatement pstmt=con.prepareStatement(query);
           
             pstmt.setInt(1,scholarno);
            
             pstmt.setString(2,subject);
             pstmt.setFloat(3,mini);
             pstmt.setFloat(4,mid);
             pstmt.setFloat(5,end);
             pstmt.setString(6,time);
           
            pstmt.executeUpdate();
            //System.out.println("Succesfully updated");
            RequestDispatcher rd=request.getRequestDispatcher("uploadResult.jsp");
            rd.forward(request, response);
            
        } catch(Exception e) 
          {
            //  System.out.println("Error");
        
           }
%>
    </body>
</html>
