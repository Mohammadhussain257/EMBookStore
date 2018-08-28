<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Book List</title>
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
	<div class="backgroundimg">
		<div class="d-flex flex-row-reverse btn-toolbar">
			<div>
				<a href="BookListController?actions=upload"><button
						type="button" class="btn btn-outline-secondary btn-lg">Upload</button></a>
				<a href="BookListController?actions=logout"><button
						type="button" class="btn btn-outline-secondary btn-lg">Logout</button></a>
			</div>

		</div>

		<c:if test="${!empty books}">
			<div class="panel-body">
				<div class="tab-content">
					<div role="tabpanel" class="tab-pane active" id="list">
						<table class="table table-striped table-bordered table-list">
							<thead>
								<tr>
									<th class="avatar">Book Cover</th>
									<th>Book Name</th>
									<th>Description</th>
									<th>Category</th>
									<th><em class="fa fa-cog"></em></th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${books}" var="book">
									<tr>
										<td><img class="card-img-top" alt="book cover"
											src="CoverDisplayController?bookid=${book.bookId}"
											width="50px" height="100px"></td>
										<td><c:out value="${book.fileName}"></c:out></td>
										<td><c:out value="${book.description}"></c:out></td>
										<td><c:out value="${book.category}"></c:out></td>
										<td align="center"><a
											href="BookListController?actions=edit&bookId=${book.bookId}"
											class="btn btn-primary" title="Edit"><i
												class="fa fa-align-center"></i></a> <a
											href="BookListController?actions=delete&bookId=${book.bookId}"
											class="btn btn-danger" title="delete"><i
												class="fa fa-trash"></i></a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</c:if>
	</div>
	<hr class="my-4">
	<footer>
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>
</body>
</html>