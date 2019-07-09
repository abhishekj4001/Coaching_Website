<%-- 
    Document   : emailIntegration
    Created on : Jan 24, 2019, 2:45:05 PM
    Author     : Harshvardhan
--%>

<%@page import="java.util.*" %>
<%@page import="javax.mail.*" %>
<%@page import="javax.mail.internet.*" %>
<%@page import="javax.activation.*"%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

        <%
        try{
                String SenderName=request.getParameter("name").trim();
                long mobile=new Long(request.getParameter("phone").trim());
                String course=request.getParameter("course").trim();
                String mess=request.getParameter("enqry").trim();
               
                final String ReceiverId="abhishekj400@gmail.com";
                
                final String password="22041995";
            
                Properties props=new Properties();
                props.put("mail.smtp.host", "true");
                props.put("mail.smtp.starttls.enable", "true");
                props.put("mail.smtp.host", "smtp.gmail.com");
                props.put("mail.smtp.port", "587");
                props.put("mail.smtp.auth", "true");
               
             
               
                Session session2 = Session.getInstance(props,  
                new javax.mail.Authenticator() 
                {  
                    protected PasswordAuthentication getPasswordAuthentication() 
                    {  
                        return new PasswordAuthentication(ReceiverId,password);  
                    }  
                }); 
             
               
                MimeMessage message1= new MimeMessage(session2);
                message1.setFrom(new InternetAddress(ReceiverId));
                message1.setRecipients(Message.RecipientType.TO,InternetAddress.parse(ReceiverId));
                message1.setSubject("Enquiry");
                message1.setText("My Name is :: "+SenderName+"\nMy contact number is :: "+mobile+"\nEnquiry for :: "+course+"\n"+mess);
                
               
                Transport.send(message1);
                out.println("<!DOCTYPE html>");
                out.println("<html>");
                out.println("<head>");
                out.println("<title>Servlet Logic</title>");            
                out.println("</head>");
                out.println("<body>");
                out.println("<h1>Thank you for sending Message.</h1>");
                out.println("<a href='/ProjectWebsite/index.jsp'>Back</a>");
                out.println("</body>");
                out.println("</html>");
        }
            catch(Exception e){out.println("error:"+e);}
        %>
    </body>
</html>