<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>about us</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="https://use.fontawesome.com/releases/v5.0.8/js/all.js"></script>
<link rel="icon" href="resources/image/EM_BookStore_logo.png" />
<link rel="stylesheet" href="resources/style.css">
<jsp:include page="nav.jsp"></jsp:include>
<jsp:include page="category.jsp"></jsp:include>
</head>
<body>
	<div class="backgroundImage">
		<div class="container">
			<div class="row">
				<div class="col-sm-6">
					<h2 align="center" class="text-white">About Development</h2>
					<div class="justify-content-center align-items-center">
						<img class="rounded-circle img-fluid"
							src="resources/image/EM_BookStore_logo.png" alt="embookstore"
							width="350px" height="350px">
					</div>
					<p class="text-white">The idea of this bookstore was
						collectively initiated by Mohammad Sheikh Hussain and Elvin
						Shrestha. The basic idea was to develop a web application that
						will work as normal bookstore</p>

					<p class="text-white">A static site was brought to live using
						Java Server Page and Servlet. The core of this site is powered by
						Java Programming language.</p>

					<p class="text-white">This bookstore is very simple application
						that allows users to find various category of books and download
						them with no effort.</p>
					<hr class="d-sm-none">
				</div>
				<div class="col-sm-6">
					<h2 align="center" class="text-white">About</h2>
					<h6 align="center" class="text-white">EMBOOKSTORE</h6>
					<div>
						<img class="img-fluid" src="resources/image/Em_bookStore.png"
							alt="embookstore">
					</div>
					<p class="text-white">At EMBOOKSTORE, every type of reader can
						satisfy one-of-a-kind book cravings. Whether your personal
						passions lean toward new releases by the hottest authors or
						classics from the old masters, you will find it on EMBOOKSTORE. We
						have the biggest bestsellers to the hardest-to-find, out-of-print
						rarities brought to you by thousands of Booksellers around the
						world. EMBOOKSTORE is where your page-turning prayers will be
						answered at amazingly free of cost. So look around and let
						EMBOOKSTORE help you find your next favorite book.</p>
					<br>
				</div>
			</div>
		</div>
		<div class="container-fluid h-80">
			<div class="row justify-content-center align-items-center h-80">
				<div class="col col-sm-6 col-md-6">
					<h2 align="center" class="text-white">OUR SMALL AMAZING TEAM</h2>
					<h5 align="center" class="text-white">A group of two peoples.</h5>
					<div class="row  justify-content-center align-items-center h-80">
						<div>
							<img src="resources/image/DSC04662.JPG"
								class="rounded-circle img-fluid" alt="developer" width="300px"
								height="300px">
							<h6 class="text-white">Ideator, Lead Designer and Developer</h6>
							<div class="padding text-center">
								<a href="https://www.facebook.com/"><i
									class="fab fa-facebook fa-2x"></i></a> <a
									href="https://twitter.com/"><i class="fab fa-twitter fa-2x"></i></a>
								<a href="https://plus.google.com/"><i
									class="fab fa-google-plus-g fa-2x"></i></a>
							</div>
						</div>
						<div>
							<img src="resources/image/37188510.jpg"
								class="rounded-circle img-fluid" alt="developer" width="300px"
								height="300px">
							<h6 class="text-white" align="center">Suggestor, Ideator</h6>
							<div class="padding text-center">
								<a href="https://www.facebook.com/"><i
									class="fab fa-facebook fa-2x"></i></a> <a
									href="https://twitter.com/"><i class="fab fa-twitter fa-2x"></i></a>
								<a href="https://plus.google.com/"><i
									class="fab fa-google-plus-g fa-2x"></i></a>
							</div>
						</div>
					</div>
				</div>
			</div>
			<hr class="my-4">
		</div>
	</div>
	<footer>
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>
</body>
</html>