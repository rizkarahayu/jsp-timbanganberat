package org.apache.jsp.dietician;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.io.*;

public final class koneksi_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\"\n");
      out.write(" \"http://www.w3.org/TR/html4/loose.dtd\">\n");
      out.write(" \n");
      out.write(" \n");
      out.write(" <html>\n");
      out.write(" <head>\n");
      out.write(" <title>Display data from MySQL</title>\n");
      out.write(" </head>\n");
      out.write(" <body>\n");
      out.write(" <h1>Student List</h1>\n");
      out.write(" ");

 try {
 
//deklarasi url database
 String url = "jdbc:mysql://localhost:3306/programdiet";
 Connection con = null;
 Statement stat = null;
 ResultSet rs = null;
 
//load jdbc driver
 Class.forName("com.mysql.jdbc.Driver").newInstance();
 
con = DriverManager.getConnection(url, "root", "root");
 
stat = con.createStatement();
 
//membuat query
 String query = "Select * from menu_makanan";
 
rs = stat.executeQuery(query);
 

      out.write("\n");
      out.write(" <table border=\"1\">\n");
      out.write(" <tr>\n");
      out.write(" <th>NRP</th>\n");
      out.write(" <th>Nama</th>\n");
      out.write(" <th>Tempat Lahir</th>\n");
      out.write(" <th>Tanggal Lahir</th>\n");
      out.write(" </tr>\n");
      out.write(" ");
 while (rs.next())
 {
 
      out.write("\n");
      out.write(" <tr>\n");
      out.write(" <td>");
      out.print(rs.getString(1));
      out.write("</td>\n");
      out.write(" <td>");
      out.print(rs.getString(2));
      out.write("</td>\n");
      out.write(" <td>");
      out.print(rs.getString(3));
      out.write("</td>\n");
      out.write(" <td><<img src=\"");
      out.print(rs.getString(4) );
      out.write("\" width=\"500\" height=\"500\"/></td>\n");
      out.write(" </tr>\n");
      out.write(" \n");

 }
 
      out.write('\n');
      out.write(' ');

 
//menutup koneksi
 rs.close();
 stat.close();
 con.close();
 }
 catch (Exception ex)
 {
 out.println ("Unable to connect to database");
 }
 
      out.write("\n");
      out.write(" </table>\n");
      out.write(" <table>\n");
      out.write(" <tr>\n");
      out.write(" <td>\n");
      out.write(" <form action=\"koneksi.jsp\" method=\"get\" >\n");
      out.write(" <button type=\"submit\">Back</button>\n");
      out.write(" </form>\n");
      out.write(" </td>\n");
      out.write(" </tr>\n");
      out.write(" </table>\n");
      out.write(" </body>\n");
      out.write(" </html>");
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
