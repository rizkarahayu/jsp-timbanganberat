<%-- 
    Document   : see
    Created on : May 1, 2018, 8:22:38 PM
    Author     : Deyana
--%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1">
		
		<title>Diatecian | Hasil</title>
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


	<body>
		
		<div id="site-content">
			<header class="site-header">
				<div class="container">
					<a href="index.html" id="branding" class="pull-left">
						<i class="icon-cupcake logo"></i>
						<h1 class="site-title">Hasil Perhitungan</h1>
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

			<main class="main-content">
				
                            <div class="author-bio">
				<div class="container">
                                    <div class="row">
					<div class="col-md-5">
                                            <figure class="profile-picture">
						<img src="dummy/boy.png" alt="">
                                            </figure>
					</div>
					<div class="col-md-6 col-md-offset-1">
                                            <h2>Hello Dear, <br></h2>
                                            <p>Hasil perhitungan berat kamu adalah </p>
                                                <H1>TIMBANG BADAN BERAT</H1>
                                                           <H3>Hai, Hasil Perhitungan Berat Ideal Kamu</H3>
                                                            <%
                                                                String tinggi=request.getParameter("tinggi");
                                                                String awal= request.getParameter("awal");
                                                                
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

                                                                }
                                                                catch (Exception e){
                                                                    out.println("gagal masuk"+e);
                                                                }
                                                            %>
                                                            <%
                                                                float t = Integer.parseInt(request.getParameter("tinggi"));
                                                                float a = Integer.parseInt(request.getParameter("awal"));
                                                                float ideal = a/((t/100)*(t/100));
                                                                
                                                                out.print("Tinggi Badan Kamu : "+tinggi);
                                                                out.print("<br>"); // Ini untuk loncat ke baris baru
                                                                out.print("Berat Badan Awal Kamu : "+awal);
                                                                out.print("<br>"); // Ini untuk loncat ke baris baru
                                                                out.print("Berat Badan Massa Ideal Kamu Seharusnya : "+ideal);
                                                                out.print("<br>");
                                                                out.print("-pengukuran Berat Ideal berdasarkan BMI-");
                                                                
                                                            %>
                                                            <%if((ideal>=25.00)&&(ideal<=29.99)){
                                                                out.print("<br>");
                                                                out.print("Anda Termasuk Gemuk");
                                                                out.print("<br>");
                                                                out.print("Coba Ikuti Menu diet di Bawah ini");
                                                                out.print("<br>");%>
                                                                <button type="submit"><a href="menumakanank.jsp">Klik Disini</a></button>
                                                            <%}
                                                                else if((ideal>=16.00)&&(ideal<=18.49)){
                                                                out.print("<br>");
                                                                out.print("Anda Termasuk Kurus");
                                                                out.print("<br>");
                                                                out.print("Berat Badan Massa Ideal Kamu Seharusnya : "+ideal);
                                                                out.print("<br>");
                                                                out.print("Coba Ikuti Menu diet di Bawah ini");
                                                                out.print("<br>");%>
                                                                <button type="submit"><a href="menumakananb.jsp">Klik Disini</a></button>
                                                                <%}
                                                                else if((ideal>=18.50)&&(ideal<=24.99)){
                                                                out.print("<br>");
                                                                out.print(" Selamat Berat Badan Kamu Ideal");
                                                                out.print("<br>");
                                                                out.print("Berat Badan Massa Ideal Kamu Seharusnya : "+ideal);
                                                                out.print("<br>");
                                                                out.print("Kamu Hanya Perlu Menjaganya ");
                                                                out.print("<br>");%>
                                                                <%}
                                                            %>
					</div>
                                    </div>
				</div>
                            </div>

			</main> <!-- .main-content -->
			
			<footer class="site-footer">
				<div class="container">
					<i class="icon-cupcake logo"></i>
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
