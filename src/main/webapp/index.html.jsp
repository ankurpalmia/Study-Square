<!DOCTYPE html>
<html lang="en">
<head>
	<meta name="generator"
        content="HTML Tidy for HTML5 (experimental) for Windows https://github.com/w3c/tidy-html5/tree/c63cc39" />
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Study Square</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
	
	<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<header class="">
		<div class="main">
			<div class="logo">
				<img src="img/logo.png">
			</div>
			<% if(session.getAttribute("uname") != null){ %>
			<ul>
				<li class="active"><a href="#">HOME</a></li>
				<li><a href="requests.jsp">REQUESTS</a></li>
				<li><a href="dashboard.jsp">DASHBOARD</a></li>
				<li><a href="logout">LOGOUT</a></li>
			</ul>
			<% }else{ %>
			<ul>
				<li class="active"><a href="#">HOME</a></li>
				<li><a href="courses.jsp">COURSES</a></li>
				<li><a href="about.html">ABOUT US</a></li>
				<li><a href="book.html">BOOK</a></li>
			</ul>
			<%} %>
		</div>
		<div class="title">
			<h1 style="font-family:Century Gothic;">STUDY &nbsp;SQUARE</h1>
		</div>
		<% if(session.getAttribute("uname") != null){ %>
		<div class="button">
			<a href="requests.jsp" class="btn">Course Requests</a>
			
		</div><%}else{ %>
		
		<div class="button">
			<a href="book.html" class="btn">Book Courses</a>
			<a href="loginpage.html" class="btn">Admin Login</a>
		</div>
		<%} %>
	</header>
	<script src="js/home.js"></script>
</body>
</html>