package org.apache.jsp.dietician;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.io.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\t<head>\n");
      out.write("\t\t<meta charset=\"UTF-8\">\n");
      out.write("\t\t<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("\t\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0,maximum-scale=1\">\n");
      out.write("\t\t\n");
      out.write("\t\t<title>Program Diet</title>\n");
      out.write("\t\t<!-- Loading third party fonts -->\n");
      out.write("\t\t<link href=\"http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700|\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("\t\t<link href=\"fonts/font-awesome.min.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("\t\t<link href=\"fonts/iconmoon.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("\t\t<!-- Loading main css file -->\n");
      out.write("\t\t<link rel=\"stylesheet\" href=\"style.css\">\n");
      out.write("\t\t\n");
      out.write("\t\t<!--[if lt IE 9]>\n");
      out.write("\t\t<script src=\"js/ie-support/html5.js\"></script>\n");
      out.write("\t\t<script src=\"js/ie-support/respond.js\"></script>\n");
      out.write("\t\t<![endif]-->\n");
      out.write("\n");
      out.write("\t</head>\n");
      out.write("\n");
      out.write("\n");
      out.write("\t<body class=\"homepage\">\n");
      out.write("\t\t\n");
      out.write("\t\t<div id=\"site-content\">\n");
      out.write("\t\t\t<header class=\"site-header\">\n");
      out.write("\t\t\t\t<div class=\"container\">\n");
      out.write("\t\t\t\t\t<a href=\"index.html\" id=\"branding\" class=\"pull-left\">\n");
      out.write("\t\t\t\t\t\t<i class=\"icon-cupcake logo\"></i>\n");
      out.write("\t\t\t\t\t\t<h1 class=\"site-title\">Name Surname</h1>\n");
      out.write("\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t<!-- Default snippet for navigation -->\n");
      out.write("\t\t\t\t\t<div class=\"main-navigation pull-right\">\n");
      out.write("\t\t\t\t\t\t<button type=\"button\" class=\"menu-toggle\"><i class=\"fa fa-bars\"></i></button>\n");
      out.write("\t\t\t\t\t\t<ul class=\"menu\">\n");
      out.write("\t\t\t\t\t\t\t<li class=\"menu-item\"><a href=\"index.jsp\">Timbang Badan</a></li>\n");
      out.write("\t\t\t\t\t\t\t<li class=\"menu-item\"><a href=\"olahraga.jsp\">Tips Olahraga</a></li>\n");
      out.write("\t\t\t\t\t\t\t<li class=\"menu-item\"><a href=\"kontak.jsp\">Kontak</a></li>\n");
      out.write("\t\t\t\t\t\t</ul> <!-- .menu -->\n");
      out.write("\t\t\t\t\t</div> <!-- .main-navigation -->\n");
      out.write("\n");
      out.write("\t\t\t\t\t<div class=\"mobile-navigation\"></div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</header> <!-- .site-header -->\n");
      out.write("\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t\t<div class=\"fullwidth-block vegetables-section category-block\">\n");
      out.write("\t\t\t\t\t<div class=\"container\">\n");
      out.write("                                            <figure><img src=\"makanan/fruits2.png\" alt=\"vegetables\"></figure>\n");
      out.write("\t\t\t\t\t\t<div class=\"contact-form\">\n");
      out.write("                                                    <div class=\"row\">\n");
      out.write("\t\t\t\t\t\t\t<div class=\"col-md-5\">\n");
      out.write("                                                            <H1>TIMBANG BADAN BERAT</H1>\n");
      out.write("                                                            <form action=\"see.jsp\" method=\"post\">\n");
      out.write("                                                            <input type=\"text\" name=\"tinggi\" placeholder=\"Tinggi\">\n");
      out.write("                                                            <input type=\"text\" name=\"awal\" placeholder=\"Berat Awal\">\n");
      out.write("                                                            <input type=\"submit\" value=\"Submit\">\n");
      out.write("                                                            </form>\n");
      out.write(" \n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("                                                    </div>\n");
      out.write("                                                </div>    \n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div> \n");
      out.write("\t\t\t\n");
      out.write("\t\t\t<footer class=\"site-footer\">\n");
      out.write("\t\t\t\t<div class=\"container\">\n");
      out.write("\t\t\t\t\t<nav class=\"footer-navigation\">\n");
      out.write("\t\t\t\t\t\t<a href=\"index.jsp\">Timbang Badan</a>\n");
      out.write("\t\t\t\t\t\t<a href=\"olahraga.jsp\">Tips Olahraga</a>\n");
      out.write("\t\t\t\t\t\t<a href=\"kontak.jsp\">Kontak</a>\n");
      out.write("\t\t\t\t\t</nav>\n");
      out.write("\t\t\t\t\t<div class=\"subscribe\">\n");
      out.write("\t\t\t\t\t\t<form action=\"#\">\n");
      out.write("\t\t\t\t\t\t\t<input type=\"text\" placeholder=\"Enter your email to join newsletter...\">\n");
      out.write("\t\t\t\t\t\t\t<input type=\"submit\" value=\"Subscribe\">\n");
      out.write("\t\t\t\t\t\t</form>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"social-links\">\n");
      out.write("\t\t\t\t\t\t<a href=\"#\" class=\"facebook\"><i class=\"fa fa-facebook\"></i></a>\n");
      out.write("\t\t\t\t\t\t<a href=\"#\" class=\"twitter\"><i class=\"fa fa-twitter\"></i></a>\n");
      out.write("\t\t\t\t\t\t<a href=\"#\" class=\"google-plus\"><i class=\"fa fa-google-plus\"></i></a>\n");
      out.write("\t\t\t\t\t\t<a href=\"#\" class=\"pinterest\"><i class=\"fa fa-pinterest\"></i></a>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t<div class=\"colophon\">\n");
      out.write("\t\t\t\t\t\t<p>Copyright 2014 Company name. Designed by Deyana & Rizka. All right reserved</p>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</footer>\n");
      out.write("\n");
      out.write("\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\n");
      out.write("\n");
      out.write("\t\t<script src=\"js/jquery-1.11.1.min.js\"></script>\n");
      out.write("\t\t<script src=\"js/plugins.js\"></script>\n");
      out.write("\t\t<script src=\"js/app.js\"></script>\n");
      out.write("                \n");
      out.write("                ");

                    String tinggi=request.getParameter("tinggi");
                    String awal= request.getParameter("awal");
                    String akhir= request.getParameter("akhir");

                    try {
                        String Host = "jdbc:mysql://localhost:3306/programdiet";
                        Connection connection = null;
                        Statement statement = null;
                        Class.forName("com.mysql.jdbc.Driver");
                        connection = DriverManager.getConnection(Host, "root", "root");
                        statement = connection.createStatement();
                        String sql="insert into berat_badan (tinggi, berat_awal) values (\'"+tinggi+"\',\'"+awal+"\')";
                        statement=connection.createStatement();
                        statement.executeUpdate(sql);
                        float t = Integer.parseInt(tinggi);
                        float b = Integer.parseInt(awal);
                        float tot = Integer.parseInt(akhir);
                        tot = (b / ((t/100)*(t/100)));
                        out.println(tot);
                    }
                    catch (Exception e){
                        out.println("gagal masuk"+e);
                    }
                
      out.write("\n");
      out.write("\t\t\n");
      out.write("\t</body>\n");
      out.write("\n");
      out.write("</html>");
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
