<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>category</title>
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
<!--Categories-->
	<div class="container-fluid padding">
		<div class="row text-center padding">
			<div class="col-xs-12">
				<a href="BookListController?actions=text_book"><button
						type="button" class="btn btn-outline-primary btn-lg">Text
						Book</button></a>
			</div>
			<div class="col-xs-12 ">
				<a href="BookListController?actions=fiction"><button
						type="button" class="btn btn-outline-primary btn-lg">Fiction</button></a>
			</div>
			<div class="col-xs-12">
				<a href="BookListController?actions=non_fiction"><button
						type="button" class="btn btn-outline-primary btn-lg">Non-Fiction</button></a>
			</div>
			<div class="col-xs-12">
				<a href="BookListController?actions=sci_fi"><button
						type="button" class="btn btn-outline-primary btn-lg">Sci-Fi</button></a>
			</div>
			<div class="col-xs-12 ">
				<a href="BookListController?actions=technology"><button
						type="button" class="btn btn-outline-primary btn-lg">Technology</button></a>
			</div>
			<div class="col-xs-12 ">
				<a href="BookListController?actions=arts_and_music"><button
						type="button" class="btn btn-outline-primary btn-lg">Arts
						and Music</button></a>
			</div>
			<div class="col-xs-12 ">
				<a href="BookListController?actions=biography"><button
						type="button" class="btn btn-outline-primary btn-lg">Biographies</button></a>
			</div>
			<div class="col-xs-12 ">
				<a href="BookListController?actions=history"><button
						type="button" class="btn btn-outline-primary btn-lg">History</button></a>
			</div>
		</div>
		<hr class="mb-0">
	</div>
</body>
</html>