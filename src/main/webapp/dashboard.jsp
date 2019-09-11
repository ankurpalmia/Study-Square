<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="ss.service.OfyService"%>
<%@page import="ss.entity.CourseEntity"%>
<%
if(session.getAttribute("uname") == null){
	response.sendRedirect("loginerror.html");
}
	else
	{	String uname=(String)session.getAttribute("uname");
		List<CourseEntity> courseList=OfyService.ofy().load().type(CourseEntity.class).list();
		Iterator<CourseEntity> itr=courseList.iterator();
		%>


<html lang="en">
<head>
	<meta name="generator"
        content="HTML Tidy for HTML5 (experimental) for Windows https://github.com/w3c/tidy-html5/tree/c63cc39" />
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>Study Square - Dashboard</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
	
	<link rel="stylesheet" href="css/dashboard.css">
</head>
<body>
	<header class="">
		<div class="main">
			<div class="logo">
				<img src="img/logo.png">
			</div>
			<ul>
				<li><a href="index.jsp">HOME</a></li>
				<li><a href="requests.jsp">REQUESTS</a></li>
				<li class="active"><a href="#">DASHBOARD</a></li>
				<li><a href="logout">LOGOUT</a></li>
			</ul>
		</div>
		<div class="title"><div class="button">
			<h1 style="font-family:Century Gothic;" class="btn">ADMIN DASHBOARD</h1></div>
		</div>
		</header>
		
				<div class="row">
				<div class="offset-lg-1 col-lg-10">
		<div class="row properties_row">
				
				<!-- Property -->
				
				<div class="offset-lg-4 col-lg-4 property_col">
				<a href="addcourse.jsp">
					<div class="property">
						<div class="property_image">
							<img src="img/add.png" alt="">
                        </div>
						<div class="property_body text-center">
                            <div class="recent_item_location">Add a Course</div>
                        </div>
					</div></a>
				</div>
				<div class="col-lg-4"></div>
				
				<% while(itr.hasNext()){
					CourseEntity fde=itr.next();%>
				
				<div class="col-lg-4 property_col">
					<div class="property">
						<div class="property_image">
							<img src="img/Category/<%=fde.category%>.jpg" alt="">
                        </div>
						<div class="property_body text-center">
                            <div class="recent_item_location"><a href="<%=fde.curl%>"><h4><%=fde.cname%></h4></a></div>
                            <div class="recent_item_location"><h5><%=fde.tname%></h5></div>
                            <div class="recent_item_location">Study Square Discount= <%=fde.discount%>% on Rs.<%=fde.fees %></div>
                        </div>
					</div>
				</div>
				<%} %>
				
			</div>
			</div>
			</div>
			
		</body>
	</html>
	
		
<%
session.setAttribute("uname", uname);
		}
%>