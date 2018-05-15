<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1">
		
		<title>Program Diet</title>
		<!-- Loading third party fonts -->
		<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700|" rel="stylesheet" type="text/css">
		<link href="fonts/font-awesome.min.css" rel="stylesheet" type="text/css">
		<link href="fonts/iconmoon.css" rel="stylesheet" type="text/css">
		<!-- Loading main css file -->
		<link rel="stylesheet" href="style.css">
		
		<!--[if lt IE 9]>
		<script src="js/ie-support/html5.js"></script>
		<script src="js/ie-support/respond.js"></script>
		<![endif]-->

	</head>


	<body class="homepage">
		
		<div id="site-content">
			<header class="site-header">
				<div class="container">
					<a href="index.html" id="branding" class="pull-left">
						<i class="icon-cupcake logo"></i>
						<h1 class="site-title">Name Surname</h1>
					</a>
					<!-- Default snippet for navigation -->
					<div class="main-navigation pull-right">
						<button type="button" class="menu-toggle"><i class="fa fa-bars"></i></button>
						<ul class="menu">
							<li class="menu-item"><a href="index.jsp">Timbang Badan</a></li>							
							<li class="menu-item"><a href="olahraga.jsp">Tips Olahraga</a></li>
							<li class="menu-item"><a href="kontak.jsp">Kontak</a></li>
						</ul> <!-- .menu -->
					</div> <!-- .main-navigation -->

					<div class="mobile-navigation"></div>
				</div>
			</header> <!-- .site-header -->

			
				<div class="fullwidth-block vegetables-section category-block">
					<div class="container">
                                            <center><H1>Deskripsi Menu Makanan</H1></center>                                                
<%
                                                        try {
                                                                String url = "jdbc:mysql://localhost:3306/programdiet";
                                                                Connection con = null;
                                                                Statement stat = null;
                                                                ResultSet rs = null;
                                                                Class.forName("com.mysql.jdbc.Driver").newInstance();
 
                                                                con = DriverManager.getConnection(url, "root", "root");
                                                                stat = con.createStatement();

                                                                 String query = "Select nama_makanan,deskripsi,jadwal,gambar  from menu_makanan where id_makanan between 6 and 10";
                                                                rs = stat.executeQuery(query);
 
                                                                %>
                                                                 <table border="5" align="center">
                                                                 <tr>
                                                                 <th>Nama Makanan</th>
                                                                 <th>Deskripsi Nutrisi</th>
                                                                 <th>Jadwal Harian</th>
                                                                 <th>Gambar</th>
                                                                 </tr>
                                                                 <% while (rs.next())
                                                                 {
                                                                 %>
                                                                 <tr>
                                                                 <td width="200px" align="center" text-align="center"><%=rs.getString(1)%></td>
                                                                 <td width="250px" align="justify" text-align="justify"><%=rs.getString(2)%></td>
                                                                 <td width="200px" align="center" text-align="center"><%=rs.getString(3)%></td>
                                                                 <td width="250px" align="center" text-align="center"><img src="<%=rs.getString(4)%>" width="230px" height="230px"/></td>
                                                                 </tr>

                                                                <%
                                                                 }
                                                                 %>
                                                                 <%

                                                                //menutup koneksi
                                                                 rs.close();
                                                                 stat.close();
                                                                 con.close();
                                                                 }
                                                                 catch (Exception ex)
                                                                 {
                                                                 out.println ("Unable to connect to database");
                                                                 }
                                                                 %>
                                                                 </table>
 						</div>
                                                    </div>
                                 
			
			<footer class="site-footer">
				<div class="container">
					<nav class="footer-navigation">
						<a href="index.jsp">Timbang Badan</a>
						<a href="olahraga.jsp">Tips Olahraga</a>
						<a href="kontak.jsp">Kontak</a>
					</nav>
					<div class="subscribe">
						<form action="#">
							<input type="text" placeholder="Enter your email to join newsletter...">
							<input type="submit" value="Subscribe">
						</form>
					</div>
					<div class="social-links">
						<a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
						<a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
						<a href="#" class="google-plus"><i class="fa fa-google-plus"></i></a>
						<a href="#" class="pinterest"><i class="fa fa-pinterest"></i></a>
					</div>
					<div class="colophon">
						<p>Copyright 2014 Company name. Designed by Deyana & Rizka. All right reserved</p>
					</div>
				</div>
			</footer>

		</div>

		<script src="js/jquery-1.11.1.min.js"></script>
		<script src="js/plugins.js"></script>
		<script src="js/app.js"></script>
	</body>

</html>