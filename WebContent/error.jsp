<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isErrorPage="true"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>error</title>
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
<body class="backgroundimg">
	<div class="container">
		<div class="row">
			<div class="span12">
				<br />
				<div class="thumbnail span3 center">
					<h2 class="text-danger">Error 404. Oops you've encountered an
						error</h2>
				</div>
				<div class="thumbnail span3 center">
					<h4 class="text-warning">Exception:</h4>
					<p class="text-primary">
						<c:out value="${requestScope['javax.servlet.error.exception']}"></c:out>
					</p>
				</div>
				<div class="thumbnail span3 center">
					<h4 class="text-warning">Request URI:</h4>
					<p class="text-primary">
						<c:out value="${requestScope['javax.servlet.error.request_uri']}"></c:out>
					</p>
				</div>
				<div class="thumbnail span3 center">
					<h4 class="text-warning">Servlet name:</h4>
					<p class="text-primary">
						<c:out value="${requestScope['javax.servlet.error.servlet_name']}"></c:out>
					</p>
				</div>
				<div class="thumbnail span3 center">
					<h4 class="text-warning">Status code:</h4>
					<p class="text-primary">
						<c:out value="${requestScope['javax.servlet.error.status_code']}"></c:out>
					</p>
				</div>
				<a href="PageController?actions=home"
					class="btn btn-danger btn-large"><i
					class="icon-share icon-white"></i> Take Me Home</a> <br />
			</div>
		</div>
	</div>
	<%-- <ul>
		<li>Exception:<c:out
				value="${requestScope['javax.servlet.error.exception']}"></c:out></li>
		<li>Request URI:<c:out
				value="${requestScope['javax.servlet.error.request_uri']}"></c:out></li>
		<li>Servlet name:<c:out
				value="${requestScope['javax.servlet.error.servlet_name']}"></c:out></li>
		<li>Status code:<c:out
				value="${requestScope['javax.servlet.error.status_code']}"></c:out></li>
	</ul> --%>
</body>
</html>