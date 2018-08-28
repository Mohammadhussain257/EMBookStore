<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>footer</title>
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
	<!--connect-->
	<div class="container-fluid padding">
		<div class="row text-center padding">
			<div class="col-12">
				<h2>Follow Us</h2>
			</div>
			<div class="col-12 padding">
				<a href="https://www.facebook.com/"><i
					class="fab fa-facebook fa-3x"></i></a> <a href="https://twitter.com/"><i
					class="fab fa-twitter fa-3x"></i></a> <a
					href="https://plus.google.com/"><i
					class="fab fa-google-plus-g fa-3x"></i></a> <a
					href="https://www.instagram.com/accounts/login/?hl=en"><i
					class="fab fa-instagram fa-3x"></i></a> <a
					href="https://www.youtube.com/"><i class="fab fa-youtube fa-3x"></i></a>
			</div>
		</div>
	</div>
	<!--footer-->
	<footer>
		<div class="container-fluid padding">
			<div class="row text-center">
				<div class="col-md-4">
					<hr class="light">
					<p>00-000-0000</p>
					<p>embookstore@gmail.com</p>
					<p>000 street name</p>
					<P>city state 0000</P>
					<hr class="light">
				</div>
				<div class="col-md-4">
					<div class="bookStore">
						<img src="resources/image/EM_BookStore_logo.png">
					</div>
				</div>
				<div class="col-md-4">
					<hr class="light">
					<h5>Subscribe to our Newsletter</h5>
					<hr class="light">
					<section class="home-newsletter">
						<form action="EmailController" method="post">
							<div class="container">
								<div class="row">
									<div class="col-sm-12">
										<div class="single">
											<div class="input-group">
												<input type="email" class="form-control"
													placeholder="Enter your email" name="email"> <span
													class="input-group-btn">
													<button class="btn btn-theme" type="submit">Subscribe</button>
												</span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</form>
					</section>
				</div>
				<div class="col-12">
					<hr class="light">
					<h5>EMbookStore.com | Copyright &copy; 2018 All Right Reserved</h5>
				</div>
			</div>
		</div>
	</footer>
</body>
</html>