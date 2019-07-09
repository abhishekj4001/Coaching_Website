<%-- 
    Document   : DownloadDoc
    Created on : Feb 19, 2019, 8:52:46 PM
    Author     : Akshat
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.io.DataOutputStream"%>
<%@page import="java.io.FileOutputStream"%>
<%@page import="java.io.OutputStream"%>
<%@page import="java.io.InputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DownloadDoc</title>
    </head>
    <body>
        <%
            try
            {
                int scholar=(int)session.getAttribute("num");
                String subjectname =(String)session.getAttribute("subcode");
                Class.forName("com.mysql.jdbc.Driver");
                Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/majorproject","root","abhishek");
               
                String query1 = "Select pdf from uploadpdf where subject=? and scholarno=?;";
                
                PreparedStatement pstmt1 = con.prepareStatement(query1);
              
               pstmt1.setString(1,subjectname);
               pstmt1.setInt(2,scholar);
                ResultSet rtst1 = pstmt1.executeQuery();
                Blob blob;
                InputStream in=null,input;
                OutputStream output;
           
                while(rtst1.next())
                {
                    in=rtst1.getBinaryStream(1);
                }
                int available1=in.available();
                byte b[]=new byte[available1];
                in.read(b);
                String str="D:/"+scholar+"_assignment"+".pdf";
                FileOutputStream fout=new FileOutputStream(str);
                DataOutputStream dout=new DataOutputStream(fout);
                dout.write(b,0,b.length);
                fout.close();
                RequestDispatcher rd=request.getRequestDispatcher("SubmittedAssignment.jsp");
                rd.forward(request, response);
                
            }
            
            catch(Exception e)
            {
                
            }
            %>
             
    </body>
</html>
