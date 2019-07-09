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
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
 
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;


/**
 *
 * @author Rini
 */
@WebServlet(name = "uploadpdf", urlPatterns = {"/uploadpdf.do"})

@MultipartConfig
public class uploadpdf extends HttpServlet {

   
    private static final long serialVersionUID = 1L;
 
    @Override
    protected void doPost(HttpServletRequest request,  HttpServletResponse response)       throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
 
         String Subject=request.getParameter("Subject").trim();
         int Semester=new Integer(request.getParameter("Semester").trim());
         Part filePart1 = request.getPart("pdf");
         
            
        InputStream pdfFileBytes = null;
         PrintWriter writer = response.getWriter();
        
        
        
        try {
 
          if (!filePart1.getContentType().equals("application/pdf"))
                  
            {
                       writer.println("<br/> Invalid File");
                       return;
            }
 
           else if (filePart1.getSize()>1048576) { //2mb
               {
              writer.println("<br/> File size too big");
              return;
               }
           }
 
            pdfFileBytes = filePart1.getInputStream();  // to get the body of the request as binary data
            byte[] bytes = new byte[pdfFileBytes.available()];
            pdfFileBytes.read(bytes);  //Storing the binary data in bytes array.
 
            Connection  con=null;
             PreparedStatement stmt=null;
                
                     
               try {
                    
                     Class.forName("com.mysql.jdbc.Driver");
                     con = DriverManager.getConnection("jdbc:mysql://localhost:3306/majorproject","root","abhishek");
                  } catch (Exception e) {
                        System.out.println(e);
                        System.exit(0);
                  }
                int success=0;
                PreparedStatement pstmt = con.prepareStatement("update assignments set pdf=? where subjects=? and Semester=?;");
                 pstmt.setBytes(1, bytes); 
                pstmt.setString(2, Subject);
                pstmt.setInt(3,Semester);
               
              
                 
                success = pstmt.executeUpdate();
                if(success>0)
                {
       
                 RequestDispatcher rd=request.getRequestDispatcher("uploadassignment.jsp");
                 rd.forward(request,response);
                }
                else
                {
                   writer.println("Invalid Data!");
                 }
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