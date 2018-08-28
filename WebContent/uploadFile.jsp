<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>upload file</title>
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
			class="row justify-content-center align-items-center h-80 background">
			<div class="col col-sm-6 col-md-6 col-lg-4 col-xl-3">
				<form action="UploadFileController" method="post"
					enctype="multipart/form-data">
					<input type="hidden" value="${book.bookId}" name="bookid">
					<div>
						<div>
							<span class="text-success">${UploadMsg}</span> <span
								class="text-success">${UpdateMsg}</span>
						</div>
						<div>
							<label class="text-white">Select Book Category</label>
						</div>
						<div class="border border-primary rounded">
							<select name="category" class="form-control">
								<option value="text_book"
									${book.category=='text_book'?'selected':''}>Text Book</option>
								<option value="fiction_book"
									${book.category=='fiction_book'?'selected':''}>Fiction
									book</option>
								<option value="non_fiction_book"
									${book.category=='non_fiction_book'?'selected':''}>Non-Fiction
									book</option>
								<option value="sci_fi_book"
									${book.category=='sci_fi_book'?'selected':''}>Sci-Fi
									book</option>
								<option value="art_music_book"
									${book.category=='art_music_book'?'selected':''}>Arts
									and Music book</option>
								<option value="technology_book"
									${book.category=='technology_book'?'selected':''}>Technology
									book</option>
								<option value="biography_book"
									${book.category=='biography_book'?'selected':''}>Biography</option>
								<option value="history_book"
									${book.category=='history_book'?'selected':''}>History
									book</option>
								<option value="best_selling_book"
									${book.category=='best_selling_book'?'selected':''}>Best
									Selling Book</option>
								<option value="book_of_the_year"
									${book.category=='book_of_the_year'?'selected':''}>Book
									of the year</option>
							</select>
						</div>
						<div>
							<label class="text-white">Upload Book</label>
						</div>
						<div class="custom-file mb-3 border border-primary rounded">
							<input type="file" name="text_book"
								class="custom-file-input form-control" id="customFile"
								value="${book.filepath}"> <label
								class="custom-file-label" for="customFile">Choose file</label>
						</div>
						<div>
							<label class="text-white">Upload Book Cover</label>
						</div>
						<div class="custom-file mb-3 border border-primary rounded">
							<input type="file" name="book_cover"
								class="custom-file-input form-control" id="customFile"
								value="${book.bookCover_Url}"> <label
								class="custom-file-label" for="customFile">Choose file</label>
						</div>
						<div>
							<label class="text-white">Book Description</label>
						</div>
						<div>
							<textarea rows="5" cols="40" name="description"
								class="form-control border border-primary rounded" required
								autofocus>${book.description}</textarea>
						</div>
						<br>
						<div align="center">
							<input type="submit" name="upload_book" value="Upload"
								class="btn btn-info btn-lg btn-block">
						</div>
						<br>
						<div align="center">
							<a href="BookEditDeleteController?actions=book_list"
								class="nounderline"><button type="button"
									class="btn btn-info btn-lg btn-block">Show All Book
									List</button></a>
						</div>
						<br>
						<div align="center">
							<a href="BookListController?actions=logout" class="nounderline"><button
									type="button" class="btn btn-info btn-lg btn-block">Logout</button></a>
						</div>
						<br>
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