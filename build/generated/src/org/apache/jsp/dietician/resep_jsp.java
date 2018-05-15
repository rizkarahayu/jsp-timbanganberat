package org.apache.jsp.dietician;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class resep_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\t\t<title>Diatecian | Recipes</title>\n");
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
      out.write("\t<body>\n");
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
      out.write("\t\t\t\t\t\t\t<li class=\"menu-item\"><a href=\"about.html\">About me</a></li>\n");
      out.write("\t\t\t\t\t\t\t<li class=\"menu-item\"><a href=\"offer.html\">My offer</a></li>\n");
      out.write("\t\t\t\t\t\t\t<li class=\"menu-item current-menu-item\"><a href=\"recipe.html\">Recipes</a></li>\n");
      out.write("\t\t\t\t\t\t\t<li class=\"menu-item\"><a href=\"contact.html\">Contact</a></li>\n");
      out.write("\t\t\t\t\t\t</ul> <!-- .menu -->\n");
      out.write("\t\t\t\t\t</div> <!-- .main-navigation -->\n");
      out.write("\n");
      out.write("\t\t\t\t\t<div class=\"mobile-navigation\"></div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</header> <!-- .site-header -->\n");
      out.write("\n");
      out.write("\t\t\t<main class=\"main-content\">\n");
      out.write("\t\t\t\t\n");
      out.write("\t\t\t\t<div class=\"content\">\n");
      out.write("\t\t\t\t\t<div class=\"container\">\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t<h2 class=\"entry-title\">Cras sit amet odio enim condimentum pretium vitae nec enim in aliquet dolor proin semper vivamus</h2>\n");
      out.write("\t\t\t\t\t\t<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t<div class=\"recipes-list\">\n");
      out.write("\t\t\t\t\t\t\t<article class=\"recipe\">\n");
      out.write("\t\t\t\t\t\t\t\t<figure class=\"recipe-image\"><img src=\"dummy/food-1.jpg\" alt=\"Food 1\"></figure>\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"recipe-detail\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<h2 class=\"recipe-title\"><a href=\"single.html\">Duis pellentesque nulla eget vehicula porta</a></h2>\n");
      out.write("\t\t\t\t\t\t\t\t\t<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Autem aliquam minima ullam officiis eum facilis impedit molestiae ducimus nam. Et, saepe commodi quisquam, porro eaque eligendi neque voluptates numquam perspiciatis.</p>\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"recipe-meta\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<span class=\"time\"><img src=\"images/icon-time.png\"> 40 min</span>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<span class=\"calorie\"><img src=\"images/icon-pie-chart.png\"> 320 kcal</span>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<span class=\"comment\"><img src=\"images/icon-comment.png\"> 16 comments</span>\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</article>\n");
      out.write("\t\t\t\t\t\t\t<article class=\"recipe\">\n");
      out.write("\t\t\t\t\t\t\t\t<figure class=\"recipe-image\"><img src=\"dummy/food-2.jpg\" alt=\"Food 2\"></figure>\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"recipe-detail\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<h2 class=\"recipe-title\"><a href=\"single.html\">Duis pellentesque nulla eget vehicula porta</a></h2>\n");
      out.write("\t\t\t\t\t\t\t\t\t<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus a dolor ducimus error rerum, corporis nam, perspiciatis molestiae illo, doloribus repellendus vitae. Excepturi inventore est adipisci. Dignissimos amet unde, consequatur.</p>\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"recipe-meta\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<span class=\"time\"><img src=\"images/icon-time.png\"> 40 min</span>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<span class=\"calorie\"><img src=\"images/icon-pie-chart.png\"> 320 kcal</span>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<span class=\"comment\"><img src=\"images/icon-comment.png\"> 16 comments</span>\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</article>\n");
      out.write("\t\t\t\t\t\t\t<article class=\"recipe\">\n");
      out.write("\t\t\t\t\t\t\t\t<figure class=\"recipe-image\"><img src=\"dummy/food-3.jpg\" alt=\"Food 3\"></figure>\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"recipe-detail\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<h2 class=\"recipe-title\"><a href=\"single.html\">Duis pellentesque nulla eget vehicula porta</a></h2>\n");
      out.write("\t\t\t\t\t\t\t\t\t<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Perspiciatis, ipsum sint omnis. Porro ea molestiae magni necessitatibus ducimus quidem at, quibusdam odit quam, doloribus temporibus sit, eum consectetur quos dolorem?</p>\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"recipe-meta\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<span class=\"time\"><img src=\"images/icon-time.png\"> 40 min</span>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<span class=\"calorie\"><img src=\"images/icon-pie-chart.png\"> 320 kcal</span>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<span class=\"comment\"><img src=\"images/icon-comment.png\"> 16 comments</span>\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</article>\n");
      out.write("\t\t\t\t\t\t\t<article class=\"recipe\">\n");
      out.write("\t\t\t\t\t\t\t\t<figure class=\"recipe-image\"><img src=\"dummy/food-4.jpg\" alt=\"Food 4\"></figure>\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"recipe-detail\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<h2 class=\"recipe-title\"><a href=\"single.html\">Duis pellentesque nulla eget vehicula porta</a></h2>\n");
      out.write("\t\t\t\t\t\t\t\t\t<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Commodi natus, recusandae, earum soluta esse iste ipsa culpa assumenda. Sint quod fugiat, nihil totam vel debitis nesciunt libero harum qui nulla.</p>\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"recipe-meta\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<span class=\"time\"><img src=\"images/icon-time.png\"> 40 min</span>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<span class=\"calorie\"><img src=\"images/icon-pie-chart.png\"> 320 kcal</span>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<span class=\"comment\"><img src=\"images/icon-comment.png\"> 16 comments</span>\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</article>\n");
      out.write("\t\t\t\t\t\t\t<article class=\"recipe\">\n");
      out.write("\t\t\t\t\t\t\t\t<figure class=\"recipe-image\"><img src=\"dummy/food-5.jpg\" alt=\"Food 5\"></figure>\n");
      out.write("\t\t\t\t\t\t\t\t<div class=\"recipe-detail\">\n");
      out.write("\t\t\t\t\t\t\t\t\t<h2 class=\"recipe-title\"><a href=\"single.html\">Duis pellentesque nulla eget vehicula porta</a></h2>\n");
      out.write("\t\t\t\t\t\t\t\t\t<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Assumenda accusamus nisi quasi, minus praesentium culpa eligendi in! Laborum cumque, ab autem sed maiores, quisquam, ipsum soluta ipsa laboriosam dolores vel.</p>\n");
      out.write("\t\t\t\t\t\t\t\t\t<div class=\"recipe-meta\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<span class=\"time\"><img src=\"images/icon-time.png\"> 40 min</span>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<span class=\"calorie\"><img src=\"images/icon-pie-chart.png\"> 320 kcal</span>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<span class=\"comment\"><img src=\"images/icon-comment.png\"> 16 comments</span>\n");
      out.write("\t\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t\t</article>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t</main> <!-- .main-content -->\n");
      out.write("\t\t\t\n");
      out.write("\t\t\t<footer class=\"site-footer\">\n");
      out.write("\t\t\t\t<div class=\"container\">\n");
      out.write("\t\t\t\t\t<i class=\"icon-cupcake logo\"></i>\n");
      out.write("\t\t\t\t\t<nav class=\"footer-navigation\">\n");
      out.write("\t\t\t\t\t\t<a href=\"about.html\">About me</a>\n");
      out.write("\t\t\t\t\t\t<a href=\"offer.html\">My offer</a>\n");
      out.write("\t\t\t\t\t\t<a href=\"recipe.html\">Recipes</a>\n");
      out.write("\t\t\t\t\t\t<a href=\"contact.html\">Contact</a>\n");
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
      out.write("\t\t\t\t\t\t<p>Copyright 2014 Company name. Designed by Themezy. All right reserved</p>\n");
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
      out.write("\t\t\n");
      out.write("\t</body>\n");
      out.write("\n");
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
