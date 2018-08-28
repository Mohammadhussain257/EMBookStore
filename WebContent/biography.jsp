<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Biography</title>
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

	<div class="row welcome text-center">
		<div class="col-12">
			<h4 class="display-6"><q>A room without books is like a body
				without a soul.</q> &#45;Marcus Tullius Cicero</h4>
			<hr>
		</div>
	</div>
	<c:if test="${!empty books}">
		<div class="container-fluid padding">
			<div class="row padding">
				<c:forEach items="${books}" var="book">
					<div class="col-sm-3">
						<div class="card">
							<img class="card-img-top" alt="book cover"
								src="CoverDisplayController?bookid=${book.bookId}" width="265px"
								height="400px">
							<div class="card-body">
								<h4 class="card-title">
									<c:out value="${book.fileName}"></c:out>
								</h4>
								<a href="DownloadController?bookid=${book.bookId}"
									class="btn btn-outline-secondary">Download</a>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</c:if>

	<footer>
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>
</body>
</html>