<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>banner</title>
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
</head>
<body>
	<!-- Carousel section -->
	<div id="slides" class="carousel slide" data-ride="carousel">
		<ul class="carousel-indicators">
			<li data-target="#slides" data-slide-to="0" class="active"></li>
			<li data-target="#slides" data-slide-to="1"></li>
			<li data-target="#slides" data-slide-to="2"></li>
		</ul>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="resources/image/beans-beverage-book-1002655.jpg">
				<div class="carousel-caption">
					<h1 class="display-2">EmbookStore</h1>
					<h3>Book Of Your Dream</h3>
					<a href="PageController?actions=login"><button type="button"
							class="btn btn-primary btn-lg">Get Started</button></a>
				</div>
			</div>
			<div class="carousel-item ">
				<img src="resources/image/blur-blurred-book-46274.jpg ">
			</div>
			<div class="carousel-item ">
				<img src="resources/image/book-dark-enlightenment-1029141.jpg">
			</div>
		</div>
	</div>
</body>
</html>