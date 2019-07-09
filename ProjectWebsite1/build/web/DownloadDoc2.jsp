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
                String id=session.getAttribute("userid").toString();
                Class.forName("com.mysql.jdbc.Driver");
                Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/majorproject", "root", "abhishek");
            String q="select scholarno,semester from student where userid=?";
                PreparedStatement pstmt=con.prepareStatement(q);
                pstmt.setString(1,id);
                ResultSet rtst1=pstmt.executeQuery();
                int scholar=0,semester=0;
                while(rtst1.next())
                {
                    scholar=rtst1.getInt(1);
                    semester=rtst1.getInt(2);
                }
                String query="select subjects from assignments where semester=?;";
               pstmt=con.prepareStatement(query);
               pstmt.setInt(1,semester);
               
                ResultSet rtst=pstmt.executeQuery();
                int i=1;
                      String subject1=null,subject2=null,
                              subject3=null,subject4=null,subject5=null;
                  while(rtst.next())
                  {
                    if(i==1)
                    {
                        subject1=rtst.getString(1);
                        i=i+1;
                    }
                    else if(i==2)
                    {
                        subject2=rtst.getString(1);
                        i=i+1;
                    }
                    else if(i==3)
                    {
                       subject3=rtst.getString(1);
                        i=i+1;
                    }
                    else if(i==4)
                    {
                        subject4=rtst.getString(1);
                        i=i+1;
                    }
                    else if(i==5)
                    {
                        subject5=rtst.getString(1);
                        i=i+1;
                    }
                  }
                
                
                
                String query1 = "Select pdf from uploadpdf where Subject=? and scholarno=?;";
                
                pstmt = con.prepareStatement(query1);
               pstmt.setString(1,subject2);
               pstmt.setInt(2,scholar);
                 rtst1 = pstmt.executeQuery();
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
                
                FileOutputStream fout=new FileOutputStream("D:/Assignment2.pdf");
                DataOutputStream dout=new DataOutputStream(fout);
                dout.write(b,0,b.length);
                fout.close();
                
                
            }
            catch(Exception e)
            {
                
            }
            %>
            <h1>Success</h1>   
    </body>
</html>
