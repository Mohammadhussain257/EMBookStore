<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin</title>
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
	<div class="container-fluid h-80">
		<div
			class="row justify-content-center align-items-center h-80 backimg">
			<div class="col col-sm-6 col-md-6 col-lg-4 col-xl-3">
				<form action="UserController" method="post">
					<span class="text-danger">${loginFailMsg}</span>
					<div class="text-white" align="center">
						<h2>Sign In</h2>
					</div>
					<div class="text-white">
						<label>User Name</label>
					</div>
					<div class="form-label-group">
						<input type="text" name="username" class="form-control"
							placeholder="username" required autofocus>
					</div>
					<div class="text-white">
						<label>Password</label>
					</div>
					<div class="form-label-group">
						<input type="password" name="pass" class="form-control"
							placeholder="Password" required>
					</div>
					<div class="text-white">
						<input type="checkbox" name="remember-me" value="remember-me">
						<label>Remember Me</label>
					</div>
					<button
						class="btn btn-lg btn-primary btn-block text-uppercase text-white"
						type="submit">Sign in</button>
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