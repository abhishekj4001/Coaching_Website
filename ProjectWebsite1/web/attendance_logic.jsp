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
    <%    try
        {
            int semester=new Integer(request.getParameter("Semester"));
            String subject=request.getParameter("Subject");
            int scholarno=new Integer(request.getParameter("Scholarno"));
            int Totalclass=new Integer(request.getParameter("totalclass"));
            int Attendedclass=new Integer(request.getParameter("attendedclass"));
            float percent=((float)Attendedclass/Totalclass)*100;
            String query="";
            SimpleDateFormat formatter=new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
            Date date=new Date();
            String time=formatter.format(date).toString();
           
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/majorproject","root","abhishek");
            if(semester==1)
            {   
             query="insert into firstsemattendance values(?,?,?,?,?,?)";
            }
            else if(semester==3)
            {
               query="insert into thirdsemattendance values(?,?,?,?,?,?)";
            } 
            else if(semester==6)
            {
               query="insert into sixthsemattendance values(?,?,?,?,?,?)";
            } 
            else if(semester==4)
            {
               query="insert into fourthsemattendance values(?,?,?,?,?,?)";
            } 
            else if(semester==2)
            {
                query="insert into secondsemattendance values(?,?,?,?,?,?)";
         
            }
            else if(semester==5)
            {
                query="insert into fifthsemattendance values(?,?,?,?,?,?)";
         
            }
            
            
            PreparedStatement pstmt=con.prepareStatement(query);
            
            pstmt.setInt(1,scholarno);
            pstmt.setString(2,subject);
            pstmt.setInt(3,Totalclass);
            pstmt.setInt(4,Attendedclass);
            pstmt.setFloat(5,percent);
            pstmt.setString(6,time);
            pstmt.executeUpdate();
            System.out.println("Succesfully updated");
            RequestDispatcher rd=request.getRequestDispatcher("uploadAttendance.jsp");
                 rd.forward(request,response);
            
        } catch(Exception e) 
          {
              System.out.println("Error");
        
           }
%>
    </body>
</html>
