<!DOCTYPE html>

<html lang="en">
	<head>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,maximum-scale=1">
		
		<title>ProgramDiet | Offer</title>
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
					<a href="index.jsp" id="branding" class="pull-left">
						<i class="icon-cupcake logo"></i>
						<h1 class="site-title">ProgramDiet</h1>
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
				
				<div class="content">
					<div class="container">
						
                                            <h1 class="entry-title"><center>Menu Makanan Diet</center></h1>
                                            <h3><center>Menu makanan ini diperuntukkan seseorang yang ingin melakukan Diet Menambah Berat Badan</center></h3>
                                            <p><center>Hai Kamu, yang mengikuti Program Diet untuk menambah berat badan, harus mengikuti jadwal makan sesuai menu makanan yang telah kami berikan, semangat ya untuk dietnya</center></h3>

						<hr>

						<div class="row">
                                                    <div><center><h1>Kategori Menu Sarapan Pagi</h1></center></div>
                                                   <% String link=request.getParameter("link"); %> 
                                                   <jsp:include page="menupagik.jsp" flush="true">  <jsp:param name="link" value="<%=link%>"/> </jsp:include> 
						</div>
                                                <div class="row">
                                                    <div><center><h1>Kategori Menu Makan Siang</h1></center></div>
                                                   <% String link1=request.getParameter("link"); %> 
                                                   <jsp:include page="menusiangk.jsp" flush="true">  <jsp:param name="link1" value="<%=link%>"/> </jsp:include> 
						</div>
                                                <div class="row">
                                                    <div><center><h1>Kategori Menu Makan Malam</h1></center></div>
                                                   <% String link2=request.getParameter("link"); %> 
                                                   <jsp:include page="menumalamk.jsp" flush="true">  <jsp:param name="link2" value="<%=link%>"/> </jsp:include> 
						</div>
						<hr>
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
						<p>Copyright 2014 Company name. Designed Deyana & Rizka. All right reserved</p>
					</div>
				</div>
			</footer>

		</div>

		

		<script src="js/jquery-1.11.1.min.js"></script>
		<script src="js/plugins.js"></script>
		<script src="js/app.js"></script>
		
	</body>

</html>