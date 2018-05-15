<%-- 
    Document   : kontak
    Created on : May 1, 2018, 9:23:50 PM
    Author     : Rizka
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1">
		
		<title>Diatecian | Kontak</title>
		<!-- Loading third party fonts -->
		<link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700|" rel="stylesheet" type="text/css">
		<link href="fonts/font-awesome.min.css" rel="stylesheet" type="text/css">
		<link href="fonts/iconmoon.css" rel="stylesheet" type="text/css">
		<!-- Loading main css file -->
		<link rel="stylesheet" href="style.css">
	</head>


	<body>
		
		<div id="site-content">
			<header class="site-header">
				<div class="container">
					<div id="branding" class="pull-left">
						<i class="icon-cupcake logo"></i>
						<h1 class="site-title"><a href="index.html">Kontak</a></h1>
					</div>
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
				
				<div class="content">
					<div class="container">
						
						<h2 class="entry-title">Kontak Kami</h2>
						<p>Untuk informasi lebih lanjut, silahkan hubungi kami : </p>
						
						<div class="contact-detail">
							<span class="location"><img src="images/icon-map-marker-alt.png"> Jl. Cantik No. 45, Surabaya Timur</span>
							<span class="email"><img src="images/icon-envelope.png"> <a href="mailto:office@companyname.com">deyarizka@gmail.com</a></span>
							<span class="phone"><img src="images/icon-phone.png"> <a href="tel:(942)321490234">(031) 70818999</a></span>
						</div>

						<div class="contact-form">
							<div class="row">
								<div class="col-md-5">
									<input type="text" placeholder="Your name...">
									<input type="text" placeholder="Email...">
									<input type="text" placeholder="Website...">
								</div>
								<div class="col-md-7">
									<textarea placeholder="Message..."></textarea>
									<input type="submit" value="Send message">
								</div>
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
						<p>Copyright 2014 Company name. Designed by Themezy. All right reserved</p>
					</div>
				</div>
			</footer>

		</div>

		

		<script src="js/jquery-1.11.1.min.js"></script>
		<script src="http://maps.google.com/maps/api/js?sensor=false&amp;language=en"></script>
		<script src="js/plugins.js"></script>
		<script src="js/app.js"></script>
		
	</body>

</html>
