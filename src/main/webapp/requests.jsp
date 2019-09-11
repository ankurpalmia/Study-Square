<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="ss.service.OfyService"%>
<%@page import="ss.entity.BookEntity"%>
<%
if(session.getAttribute("uname") == null){
	response.sendRedirect("loginerror.html");
}
	else
	{	String uname=(String)session.getAttribute("uname");
		List<BookEntity> courseList=OfyService.ofy().load().type(BookEntity.class).list();
		Iterator<BookEntity> itr=courseList.iterator();
		%>

<html lang="en">
<head>
	<meta name="generator"
        content="HTML Tidy for HTML5 (experimental) for Windows https://github.com/w3c/tidy-html5/tree/c63cc39" />
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Study Suare -Bookings</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
	
	<link rel="stylesheet" href="css/requests.css">
</head>
<body>
	<header class="">
		<div class="main">
			<div class="logo"><a href="index.jsp">
				<img src="img/logo.png"></a>
				</div>
			</div>
			<ul>
				<li><a href="index.jsp">HOME</a></li>
				<li class="active"><a href="#">REQUESTS</a></li>
				<li><a href="dashboard.jsp">DASHBOARD</a></li>
				<li><a href="logout">LOGOUT</a></li>
			</ul>
		</div>
		<div class="aboutBox" >
		
			<h1>Courses Requested</h1>
			<div class="row">

				<!-- About Content -->
				<div class="col-lg-12">
					<div class="about_content">
						<div class="about_text">
							<table class="table table-hover table-dark">
  								<thead>
    								<tr>
      								<th scope="col">Course Name</th>
      								<th scope="col">Tutor Name</th>
      								<th scope="col">Category</th>
      								<th scope="col">Name</th>
      								<th scope="col">Phone</th>
      								<th scope="col">Email</th>
    								</tr>
  								</thead>
  								<tbody>
  								<% while(itr.hasNext()){
								BookEntity bookings=itr.next();%>
    								<tr>
      								<td><%=bookings.cname %></td>
      								<td><%=bookings.tname %></td>
      								<td><%=bookings.category %></td>
      								<td><%=bookings.name %></td>
      								<td><%=bookings.phone %></td>
      								<td><%=bookings.email %></td>
    								</tr>
    								<%} %>
    							</tbody>
							</table>
						</div>
					</div>
				
				</div>
				

			
	</div>
	</header>
	<script src="js/home.js"></script>
</body>
</html>

		
<%
session.setAttribute("uname", uname);
		}
%>