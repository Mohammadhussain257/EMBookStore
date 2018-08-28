<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>home</title>
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
<jsp:include page="banner.jsp"></jsp:include>
<jsp:include page="category.jsp"></jsp:include>
</head>
<body>
	<!-- Jumbotron -->
	<div class="container">
		<div class="jumbotron">
			<img alt="best selling book"
				src="resources/image/best_selling_book.jpg" class="img-fluid">
			<div class="col-12">
				<p class="lead">
					<q>There is no friend as loyal as a book.</q><br> &#45; Ernest
					Hemingway
				</p>
			</div>
			<h1>Best Selling Books</h1>
			<p>Browse the most popular selling books of all time and download
				it completely free on EMBOOKSTORE.</p>
			<a href="BookListController?actions=best_selling_book"><button
					type="button" class="btn btn-primary btn-lg">Click Here To
					Download</button></a>
		</div>
	</div>

	<!-- Jumbotron -->
	<div class="container">
		<div class="jumbotron">
			<img alt="best selling book"
				src="resources/image/book_of_the_year.jpg" class="img-fluid">
			<div class="col-12">
				<p class="lead">
					<q>Good friends, good books, and a sleepy conscience: this is
						the ideal life. </q><br> &#45; Mark Twain
				</p>
			</div>
			<h1>Book Of The Year</h1>
			<p>Get the latest book that has been listed in category of, Book
				Of The Year on EMBOOKSTORE completely free.</p>
			<a href="BookListController?actions=book_of_the_year"><button
					type="button" class="btn btn-primary btn-lg">Click Here To
					Download</button></a>
		</div>
	</div>
	<!--Three column section-->
	<div align="center">
		<h2>${bestBookMsg}</h2>
		<h2>${bookMsg}</h2>
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
	<!--Two column section-->
	<div class="container-fluid padding">
		<div class="row padding">
			<div class="col-lg-6">
				<h2>What Does Reading Do To Your Brain?</h2>
				<p>Reading is perhaps one of the best hobbies in the world, and
					one of the healthiest. Whether you're reading fiction or
					non-fiction, a newspaper or a poem, reading is not only educational
					and informative, it's entertaining and relaxing, too. And, although
					it is still a widely unexplored area, research on reading has shown
					its many benefits.</p>
				<p>Over the years, doctors, scientists, and researchers have
					confirmed that reading is a stress-reducing activity that can lower
					your heart rate and blood pressure. It's been proven to improve
					people's memories, increase brain power, and even enhance empathic
					skills. Reading has even been linked to longer life spans.</p>
				<p>Source -By SADIE TROMBETTA</p>
				<br> <a
					href="https://www.psychologytoday.com/us/blog/the-athletes-way/201401/reading-fiction-improves-brain-connectivity-and-function"
					class="btn btn-primary">Learn More</a>
			</div>
			<div class="col-lg-6">
				<img src="resources/image/read-book.png" class="img-fluid">
			</div>
		</div>
	</div>
	<hr class="my-4">

	<!--Fixed background-->
	<figure>
		<div class="fixed-wrap">
			<div id="fixed">
				<img class="gif" src="resources/image/books-library-students.jpg">
			</div>
		</div>
	</figure>
	<!--Meet the team-->
	<div class="container-fluid padding">
		<div class="row welcome text-center">
			<div class="col-12">
				<h1 class="display-4">Meet The Top Writers</h1>
			</div>
			<hr>
		</div>
	</div>
	<!--Cards-->
	<div class="container-fluid padding">
		<div class="row padding">
			<div class="col-md-4">
				<div class="card">
					<img class="card-img-top" src="resources/image/Keith Gessen.jpg">
					<div class="card-body">
						<h4 class="card-title">Keith Gessen</h4>
						<p class="card-text">Keith A. Gessen (born January 9, 1975) is
							a Russian-born American novelist, journalist, literary
							translator, and co-editor of n+1, a thrice-yearly magazine of
							literature, politics, and culture based in New York City.</p>
						<a
							href="https://twitter.com/keithgessen?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor"
							class="btn btn-outline-secondary">See Profile</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card">
					<img class="card-img-top" src="resources/image/J-k_Rowling.jpg">
					<div class="card-body">
						<h4 class="card-title">J.K Rowling</h4>
						<p class="card-text">Joanne Rowling (born 31 July 1965),
							writing under the pen names J. K. Rowling and Robert Galbraith,
							is a British novelist, philanthropist, film and television
							producer and screenwriter best known for writing the Harry Potter
							fantasy series.</p>
						<a
							href="https://twitter.com/jk_rowling?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor"
							class="btn btn-outline-secondary">See Profile</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card">
					<img class="card-img-top" src="resources/image/David-Baldacci.jpg">
					<div class="card-body">
						<h4 class="card-title">David Baldacci</h4>
						<p class="card-text">David Baldacci (born August 5, 1960) is a
							bestselling American novelist. Baldacci has published 36
							best-selling novels for adults as well as six novels for younger
							readers.</p>
						<a href="https://twitter.com/davidbaldacci?lang=en"
							class="btn btn-outline-secondary">See Profile</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--Two column section-->
	<figure>
		<div class="fixed-wrap">
			<div id="fixed">
				<img class="gif"
					src="resources/image/Em_bookStore_fixed_background.png">
			</div>
		</div>
	</figure>
	<div class="container-fluid padding">
		<div class="row padding">
			<div class="col-lg-12">
				<h2>Our Conviction</h2>
				<p>
					<q>For one who reads, there is no limit to the number of lives
						that may be lived, for fiction, biography, and history offer an
						inexhaustible number of lives in many parts of the world, in all
						periods of time.</q> &#45;Louis L'Amour
				</p>
				<p>
					<q>A book lying idle on a shelf is wasted ammunition. Like
						money, books must be kept in constant circulation... A book is not
						only a friend, it makes friends for you. When you have possessed a
						book with mind and spirit, you are enriched. But when you pass it
						on you are enriched threefold.</q> Henry Miller
				</p>
				<br>
			</div>
		</div>
		<hr class="my-4">
	</div>
	<footer>
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>
</body>
</html>