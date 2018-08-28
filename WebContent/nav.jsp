<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>navigation</title>
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
	<!--Navigation-->
	<nav class="navbar navbar-expand-md navbar-light bg-light sticky-top">
		<div class="embook-logo">
			<img src="resources/image/EM_BookStore_logo.png">
		</div>
		<div class="container-fluid">
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link"
						href="BookListController?actions=home">Home</a></li>
					<li class="nav-item"><a class="nav-link"
						href="PageController?actions=aboutUs">About Us</a></li>
					<li class="nav-item"><a class="nav-link"
						href="PageController?actions=contact">Contact</a></li>
				</ul>
			</div>
			<form role="form" id="form-buscar" action="SearchController" method="post">
				<div class="form-group">
					<div class="input-group">
						<input class="form-control" type="text" name="search"
							placeholder="enter book name..." required /> <span
							class="input-group-btn">
							<button class="btn btn-success" type="submit">
								<i class="glyphicon glyphicon-search" aria-hidden="true"></i>
								Search
							</button>
						</span>
					</div>
				</div>
			</form>
		</div>
	</nav>
</body>
</html>