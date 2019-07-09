/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pack1;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.Date;
 
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
 
@WebServlet("/UploadDoc")
@MultipartConfig
public class UploadDoc extends HttpServlet {
 
    /**
     *
     */
    private static final long serialVersionUID = 1L;
 
    @Override
    protected void doPost(HttpServletRequest request,  HttpServletResponse response)       throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
 
       Part filePart1 = request.getPart("subject1pdf");
           Part filePart2 = request.getPart("subject2pdf");
        Part filePart3 = request.getPart("subject3pdf");
         Part filePart4 = request.getPart("subject4pdf");
           Part filePart5 = request.getPart("subject5pdf");
            int semester=new Integer(request.getParameter("semester").trim());
            int scholar=new Integer(request.getParameter("scholar").trim());
        InputStream pdfFileBytes = null;
         PrintWriter writer = response.getWriter();
        
        
        
        try {
 
          if (!filePart1.getContentType().equals("application/pdf")
                  || !filePart2.getContentType().equals("application/pdf")
                  || !filePart3.getContentType().equals("application/pdf")
                  || !filePart4.getContentType().equals("application/pdf")
                  || !filePart5.getContentType().equals("application/pdf"))
            {
                       writer.println("<br/> Invalid File");
                       return;
            }
 
           else if (filePart1.getSize()>1048576
                   || filePart2.getSize()>1048576
                   || filePart3.getSize()>1048576
                   || filePart4.getSize()>1048576
                   || filePart5.getSize()>1048576) { //2mb
               {
              writer.println("<br/> File size too big");
              return;
               }
           }
 
            pdfFileBytes = filePart1.getInputStream();  // to get the body of the request as binary data
            byte[] bytes = new byte[pdfFileBytes.available()];
            pdfFileBytes.read(bytes);  //Storing the binary data in bytes array.
 
            Connection  con=null;
             Statement stmt=null;
 
               try {
                     Class.forName("com.mysql.jdbc.Driver");
                     con = DriverManager.getConnection("jdbc:mysql://localhost:3306/majorproject","root","abhishek");
                  } catch (Exception e) {
                        System.out.println(e);
                        System.exit(0);
                              }
 
              String query="select subjects from assignments where semester=?;";
              PreparedStatement pstmt=con.prepareStatement(query);
              pstmt.setInt(1, semester);
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
                    else  if(i==3)
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
              
              SimpleDateFormat formatter=new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
            Date date=new Date();
            String time=formatter.format(date).toString();
           
           
              
              
              
              
                int success=0;
               pstmt = con.prepareStatement("insert into uploadpdf values(?,?,?,?)");
                
                pstmt.setString(1, subject1);
                pstmt.setBytes(2, bytes);    
                
                pstmt.setInt(3, scholar);
                pstmt.setString(4,time);
                success = pstmt.executeUpdate();
                
                 
                 
                 
            pdfFileBytes = filePart2.getInputStream();  // to get the body of the request as binary data
 
             bytes = new byte[pdfFileBytes.available()];
             pdfFileBytes.read(bytes);  //Storing the binary data in bytes array.
                 
                  success=0;
                 pstmt = con.prepareStatement("insert into uploadpdf values(?,?,?,?)");
                
                pstmt.setString(1, subject2);
                pstmt.setBytes(2, bytes);    
                
                pstmt.setInt(3, scholar);
                pstmt.setString(4,time);
         
                success = pstmt.executeUpdate();
                
                  pdfFileBytes = filePart3.getInputStream();  // to get the body of the request as binary data
 
          bytes = new byte[pdfFileBytes.available()];
             pdfFileBytes.read(bytes);  //Storing the binary data in bytes array.
             success=0;
                pstmt = con.prepareStatement("insert into uploadpdf values(?,?,?,?)");
                
                pstmt.setString(1, subject3);
                pstmt.setBytes(2, bytes);    
                
                pstmt.setInt(3, scholar);
                pstmt.setString(4,time);
                success = pstmt.executeUpdate();
                    
                  pdfFileBytes = filePart4.getInputStream();  // to get the body of the request as binary data
 
           bytes = new byte[pdfFileBytes.available()];
             pdfFileBytes.read(bytes);  //Storing the binary data in bytes array.
        success=0;
    pstmt = con.prepareStatement("insert into uploadpdf values(?,?,?,?)");
                
                pstmt.setString(1, subject4);
                pstmt.setBytes(2, bytes);    
                
                pstmt.setInt(3, scholar);
                pstmt.setString(4,time);
                success = pstmt.executeUpdate();          
                 
                 
                  pdfFileBytes = filePart5.getInputStream();  // to get the body of the request as binary data
 
            bytes = new byte[pdfFileBytes.available()];
             pdfFileBytes.read(bytes);  //Storing the binary data in bytes array.
                success=0;
         pstmt = con.prepareStatement("insert into uploadpdf values(?,?,?,?)");
                
                pstmt.setString(1, subject5);
                pstmt.setBytes(2, bytes);    
                
                pstmt.setInt(3, scholar);
                pstmt.setString(4,time);
                success = pstmt.executeUpdate();  
                if(success>=1)  
                    System.out.println("PDF Stored");
                  
 
                 writer.println("<br/> Pdf Inserted Succesfully");
                 
                 
                 
 
        } catch (FileNotFoundException fnf) {
            writer.println("You  did not specify a file to upload");
            writer.println("<br/> ERROR: " + fnf.getMessage());
 
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } finally {
 
            if (pdfFileBytes != null) {
                pdfFileBytes.close();
            }
            if (writer != null) {
                writer.close();
            }
        }
 
    }
 
}