package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import org.apache.tomcat.util.codec.binary.Base64;
import java.io.DataOutputStream;
import java.io.FileOutputStream;
import java.io.PrintWriter;
import java.io.OutputStream;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.Connection;

public final class faculty_005fpersonalDetails_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("     \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("<title>Dashboard</title>\n");
      out.write("<meta charset=\"UTF-8\" />\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\" />\n");
      out.write("<link rel=\"stylesheet\" href=\"css/bootstrap.min.css\" />\n");
      out.write("<link rel=\"stylesheet\" href=\"css/bootstrap-responsive.min.css\" />\n");
      out.write("<link rel=\"stylesheet\" href=\"css/matrix-style.css\" />\n");
      out.write("<link rel=\"stylesheet\" href=\"css/matrix-media.css\" />\n");
      out.write("<link href=\"font-awesome/css/font-awesome.css\" rel=\"stylesheet\" />\n");
      out.write("  <link rel='stylesheet' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css'>\n");
      out.write("  <link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("  \n");
      out.write("<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,700,800' rel='stylesheet' type='text/css'>\n");
      out.write("<style>\n");
      out.write("    .row {\n");
      out.write("  display: -webkit-box;\n");
      out.write("  display: -webkit-flex;\n");
      out.write("  display: -moz-box;\n");
      out.write("  display: -ms-flexbox;\n");
      out.write("  display: flex;\n");
      out.write("  -webkit-flex-wrap: wrap;\n");
      out.write("  -ms-flex-wrap: wrap;\n");
      out.write("  flex-wrap: wrap;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".row-space {\n");
      out.write("  -webkit-box-pack: justify;\n");
      out.write("  -webkit-justify-content: space-between;\n");
      out.write("  -moz-box-pack: justify;\n");
      out.write("  -ms-flex-pack: justify;\n");
      out.write("  justify-content: space-between;\n");
      out.write("}\n");
      out.write(".col-2 {\n");
      out.write("  width: -webkit-calc((100% - 30px));\n");
      out.write("  width: -moz-calc((100% - 30px));\n");
      out.write("  width: calc((100% - 200px));\n");
      out.write("}\n");
      out.write("\n");
      out.write("@media (max-width: 767px) {\n");
      out.write("  .col-2 {\n");
      out.write("    width: 100%;\n");
      out.write("  }\n");
      out.write("\n");
      out.write("</style>\n");
      out.write("<script>\n");
      out.write("    function enable() {\n");
      out.write("document.getElementById(\"name1\").disabled = false;\n");
      out.write("document.getElementById(\"name2\").disabled = false;\n");
      out.write("document.getElementById(\"name3\").disabled = false;\n");
      out.write("document.getElementById(\"name4\").disabled = false;\n");
      out.write("document.getElementById(\"name5\").disabled = false;\n");
      out.write("document.getElementById(\"name6\").disabled = false;\n");
      out.write("\n");
      out.write("}\n");
      out.write("    </script>\n");
      out.write("     \n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\n");
      out.write("<!--Header-part-->\n");
      out.write("<div id=\"header\">\n");
      out.write("    <br>\n");
      out.write("   <a href=\"index.jsp\"><img src=\"img/JSTC logo3.png\" alt=\"\" title=\"\" /></a>\n");
      out.write("</div>\n");
      out.write("<!--close-Header-part--> \n");
      out.write("\n");
      out.write("<!--close-top-serch--> \n");
      out.write("\n");
      out.write("<!--sidebar-menu-->\n");
      out.write("\n");
      out.write("<div id=\"sidebar\"> <a href=\"#\" class=\"visible-phone\"><i class=\"icon icon-signal\"></i>Personal Details</a>\n");
      out.write("  <ul>\n");
      out.write("      <li><a href=\"faculty_index_2.jsp\"><i class=\"icon icon-home\"></i> <span>Dashboard</span></a> </li>\n");
      out.write("      <li class=\"active\"> <a href=\"faculty_personalDetails.jsp\"><i class=\"icon icon-signal\"></i> <span>Personal Details</span></a> </li>\n");
      out.write("    \n");
      out.write("    <li><a href=\"uploadAttendance.jsp\"><i class=\"icon icon-th\"></i> <span>Upload Attendance</span></a></li>\n");
      out.write("    <li><a href=\"uploadassignment.jsp\"><i class=\"icon icon-fullscreen\"></i> <span>Upload Assignments</span></a></li>\n");
      out.write("    <li><a href=\"uploadResult.jsp\"><i class=\"icon icon-fullscreen\"></i> <span>Upload Result</span></a></li>\n");
      out.write("    <li><a href=\"index.jsp\"><i class=\"icon icon-fullscreen\"></i> <span>Logout</span></a></li>\n");
      out.write("   \n");
      out.write("  </ul>\n");
      out.write("</div>\n");
      out.write("<div id=\"content\">\n");
      out.write("  <div id=\"content-header\">\n");
      out.write("      <div id=\"breadcrumb\"><a href=\"faculty_index_2.jsp\" title=\"Go to Home\" class=\"tip-bottom\"><i class=\"icon-home\"></i> Home</a> <a href=\"#\" class=\"current\">Profile</a></div>\n");
      out.write("    <h1>Personal Details</h1>\n");
      out.write("  </div>\n");
      out.write("\n");
      out.write("        <div class=\"  p-b-100 font-poppins\">\n");
      out.write("        <div class=\"wrapper--w680\">\n");
      out.write("    \n");
      out.write("            <div class=\"\">\n");
      out.write("                <div class=\"card-body\"> \n");
      out.write("           <form action=\"facultyImage.do\" method=\"post\" enctype=\"multipart/form-data\">\n");
      out.write("                        \n");
      out.write("\n");
      out.write("\n");
      out.write("  <div class=\"container\">  \n");
      out.write(" \n");
      out.write("  ");

       
                String user=(String)session.getAttribute("userid");
                Class.forName("com.mysql.jdbc.Driver");
                Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/majorproject", "root", "abhishek");
        
                String query = "Select image from facultyprofile where userid=?;";
                
                
               PreparedStatement pstmt1 = con.prepareStatement(query);
                pstmt1.setString(1,user);
               
                String imageStr="";
                ResultSet rtst1 = pstmt1.executeQuery();
                while(rtst1.next())
                {
                    Blob imageBlob = rtst1.getBlob("image");
                    if(imageBlob!=null){
                    byte [] bytes = imageBlob.getBytes(1l, (int)imageBlob.length());
                    imageStr = "data:image/png;base64,"+Base64.encodeBase64String(bytes);
                    }
                 }
            
              
           
      
      out.write("\n");
      out.write("      \n");
      out.write("\n");
      out.write("      <img  src=\"");
      out.print(imageStr);
      out.write("\" class=\"photo__frame photo__frame--circle\" style=\"margin-left: 50px;\">   \n");
      out.write("</div>  \n");
      out.write("<h6>*Insert passport size image only!</h6>\n");
      out.write("  <br>\n");
      out.write("  \n");
      out.write("  <input type=\"file\" name=\"imageupload\" style=\"margin-left: 80px\"><br>\n");
      out.write("   <input type=\"hidden\" name=\"pname\" value=\"");
      out.print( (String)session.getAttribute("userid") );
      out.write("\"\n");
      out.write(" \n");
      out.write("  <div class=\"row-space\">\n");
      out.write("                        <div class=\"p-t-15\">\n");
      out.write("            <button class=\"btn btn--radius\" style=\"background: #4272d7;color: #fff;\n");
      out.write("  font-family: Poppins, Arial, Helvetica,Neue,sans-serif; border-radius: 5px; display: inline-block;\n");
      out.write("  line-height: 40px;\n");
      out.write("  padding: 0 5px 0 5px;\n");
      out.write("  font-size: 15px;\n");
      out.write("  margin-left: 80px;\"; type=\"Register\">Upload</button>\n");
      out.write("                </div>\n");
      out.write("            </div>  \n");
      out.write("</form> \n");
      out.write("  \n");
      out.write(" <form action=\"faculty_personaldetails_logic.jsp\" method=\"post\"> \n");
      out.write("  \n");
      out.write("                       ");
 
                        try
                        {
                           String id=(String)session.getAttribute("userid");
                        
                          Class.forName("com.mysql.jdbc.Driver");
                          con=DriverManager.getConnection("jdbc:mysql://localhost:3306/majorproject","root","abhishek");
                           query="select name,designation,department,contact,email,address from facultyregister where userid=?;";
                          PreparedStatement pstmt = con.prepareStatement(query);
                          pstmt.setString(1,id);
                          ResultSet rtst=pstmt.executeQuery();
                          while(rtst.next())
                          {
                        
                       
      out.write("\n");
      out.write("                       \n");
      out.write("                         <div class=\"row row-space\">\n");
      out.write("                            <div class=\"col-2\">\n");
      out.write("                                <div class=\"input-group\">\n");
      out.write("                                    <label><h5>Faculty Name</h5></label>\n");
      out.write("                                    <input class=\"input--style-4\" id=\"name1\" type=\"text\" name=\"faculty_name\"\n");
      out.write("                                           value=\"");
      out.print(rtst.getString(1));
      out.write("\" disabled>\n");
      out.write("                                </div>\n");
      out.write("                           \n");
      out.write("                        </div>\n");
      out.write("                         </div>\n");
      out.write("                             <div class=\"row row-space\">\n");
      out.write("                            <div class=\"col-2\">\n");
      out.write("                                <div class=\"input-group\">\n");
      out.write("                                    <label class=\"\"><h5>Designation</h5></label>\n");
      out.write("                                    <input class=\"input--style-4\" id=\"name2\" type=\"text\" name=\"designation\"\n");
      out.write("                                           value=\"");
      out.print(rtst.getString(2));
      out.write("\" disabled>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            \n");
      out.write("                        </div>\n");
      out.write("                         \n");
      out.write("                        \n");
      out.write("                         <div class=\"row row-space\">\n");
      out.write("                            <div class=\"col-2\">\n");
      out.write("                                <div class=\"input-group\">\n");
      out.write("                                    <label class=\"\"><h5>Department Name</h5></label>\n");
      out.write("                                    <input class=\"input--style-4\" id=\"name3\" value=\"");
      out.print(rtst.getString(3));
      out.write("\" disabled type=\"text\" name=\"department\">\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                          \n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("                         <div class=\"row row-space\">\n");
      out.write("                            <div class=\"col-2\">\n");
      out.write("                                <div class=\"input-group\">\n");
      out.write("                                    <label class=\"\"><h5>Contact</h5></label>\n");
      out.write("                                    <input class=\"input--style-4\" id=\"name4\" value=\"");
      out.print(rtst.getLong(4));
      out.write("\" disabled type=\"text\" name=\"contact\">\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            \n");
      out.write("                        </div>\n");
      out.write("                        \n");
      out.write("                        \n");
      out.write("                        <div class=\"row row-space\">\n");
      out.write("                            <div class=\"col-2\">\n");
      out.write("                                <div class=\"input-group\">\n");
      out.write("                                    <label class=\"\"><h5>Email Id</h5></label>\n");
      out.write("                                    <input class=\"input--style-4\" id=\"name5\" value=\"");
      out.print(rtst.getString(5));
      out.write("\" disabled type=\"text\" name=\"email\">\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            \n");
      out.write("                        </div>\n");
      out.write("                            \n");
      out.write("                        <div class=\"row row-space\">\n");
      out.write("                            <div class=\"col-2\">\n");
      out.write("                                <div class=\"input-group\">\n");
      out.write("                                    <label class=\"\"><h5>Address</h5></label>\n");
      out.write("                                    <input class=\"input--style-4\" id=\"name6\" value=\"");
      out.print(rtst.getString(6));
      out.write("\" disabled type=\"text\" name=\"permanent\">\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            \n");
      out.write("                        </div>\n");
      out.write("                         ");
 } 

                        
                         
      out.write("\n");
      out.write("              ");
 
                  }catch(Exception e) {}

      out.write("\n");
      out.write("                 <br>\n");
      out.write("                  <div class=\"row row-space\">\n");
      out.write("                        <div class=\"p-t-15\">\n");
      out.write("            <button class=\"btn btn--radius-2\" style=\"background: #4272d7;color: #fff;\n");
      out.write("  font-family: Poppins, Arial, Helvetica,Neue,sans-serif; border-radius: 5px; display: inline-block;\n");
      out.write("  line-height: 40px;\n");
      out.write("  padding: 0 50px;\n");
      out.write("  font-size: 18px;\"; type=\"Register\">Submit</button>\n");
      out.write("                </div>\n");
      out.write("            </div>  \n");
      out.write("                </div>\n");
      out.write("                    </form>\n");
      out.write("                 <br> <div class=\"row row-space\">\n");
      out.write("                        <div class=\"p-t-15\">\n");
      out.write("                     <button class=\"btn btn--radius-2\" style=\"background: #4272d7;color: #fff;\n");
      out.write("  font-family: Poppins, Arial, Helvetica,Neue,sans-serif; border-radius: 5px; display: inline-block;\n");
      out.write("  line-height: 40px;\n");
      out.write("  padding: 0 50px;\n");
      out.write("  font-size: 18px;\"; type=\"Register\" onclick=\"enable()\">Edit</button>\n");
      out.write("                        </div>\n");
      out.write("                        </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("</div>\n");
      out.write("\n");
      out.write("<script src=\"js/jquery.min.js\"></script> \n");
      out.write("<script src=\"js/bootstrap.min.js\"></script> \n");
      out.write("<script src=\"js/jquery.flot.min.js\"></script> \n");
      out.write("<script src=\"js/jquery.flot.pie.min.js\"></script> \n");
      out.write("<script src=\"js/matrix.personalDetails.js\"></script> \n");
      out.write("<script src=\"js/jquery.flot.resize.min.js\"></script> \n");
      out.write("<script src=\"js/matrix.js\"></script> \n");
      out.write("<script src=\"js/jquery.peity.min.js\"></script> \n");
      out.write("<script src=\"js/matrix.dashboard.js\"></script>\n");
      out.write("  <script src='https://code.jquery.com/jquery-2.2.4.min.js'></script>\n");
      out.write("\n");
      out.write("  \n");
      out.write("\n");
      out.write("    <script  src=\"js/index.js\"></script>\n");
      out.write(" \n");
      out.write("</body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
