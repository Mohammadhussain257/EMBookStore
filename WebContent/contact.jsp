<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>contact</title>
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
<jsp:include page="nav.jsp"></jsp:include>
<jsp:include page="category.jsp"></jsp:include>
<link rel="stylesheet" href="resources/style.css">
</head>
<body>
	<div class="container-fluid h-80 background">
		<div
			class="row justify-content-center align-items-center h-80 ">
			<div class="col col-sm-6 col-md-6 col-lg-4 col-xl-3">
				<form action="PageController" method="post">
					<div>
					<span class="text-success">${message}</span>
					</div>
					<div>
						<div>
							<h2 class="text-white">Contact US</h2>
						</div>
						<h6 class="text-white">Contact us today, and get reply with in 24 hours!</h6>
						<div>
							<label class="text-white">Your Full Name</label>
						</div>
						<div class="border border-primary rounded">
							<input type="text" name="fullName" class="form-control">
						</div>
						<div>
							<label class="text-white">Email Address</label>
						</div>
						<div class="custom-file mb-3 border border-primary rounded">
							<input type="email" name="email" class="form-control">
						</div>
						<div>
							<label class="text-white">Mobile Number</label>
						</div>
						<div class="custom-file mb-3 border border-primary rounded">
							<input type="text" name="no" class="form-control">
						</div>
						<div>
							<label class="text-white">Your Message</label>
						</div>
						<div>
							<textarea rows="5" cols="40" name="message"
								class="form-control border border-primary rounded"></textarea>
						</div>
						<br>
						<div align="center">
							<input type="submit" name="message" value="Send Message"
								class="btn btn-info btn-lg btn-block">
						</div>
						<br> <br>
					</div>
				</form>
			</div>
		</div>
		<hr class="my-4">
	</div>
	<footer>
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>
</body>
</html>