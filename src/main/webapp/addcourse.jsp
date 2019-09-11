<%
if(session.getAttribute("uname") == null){
	response.sendRedirect("loginerror.html");
}
	else
	{	String uname=(String)session.getAttribute("uname");
	%>

<!DOCTYPE html>
<html lang="en">
<head>
	<title>Study Square - Course Booking</title>
	<link rel="stylesheet" href="css/book.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous" />
	
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
				<li><a href="dashboard.jsp">DASHBOARD</a></li>
				<li><a href="logout">LOGOUT</a></li>
			</ul>
		</div>
	
	<div class="aboutBox" >
		
			<h1>Add New Course</h1>
			<div class="row">

				<!-- About Content -->
				<div class="col-lg-5">
					<div class="about_content">
							
						<div class="subtitle"><i>Enter the details of the course to add with its URL</i> </div><br>
						<div class="about_text">
							<form action="addcourse" method="post">
								<p>Course Name
								<input type="text" name="cname" placeholder="eg: Machine Learning" required="required"></p>
								<p>Tutor Name
								<input type="text" name="tname" placeholder="eg: Andrew Ng" required></p>
								<p>Category &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<select name="category" class="dropdowns">
									<option disabled selected value> -- Select an option -- </option>
									<option value="Blockchain">Blockchain</option>
    								<option value="Cloud Computing">Cloud Computing</option>
    								<option value="Cyber Security">Cyber Security</option>
    								<option value="Data Science">Data Science</option>
    								<option value="DBMS">DBMS</option>
    								<option value="DS and Algorithms">DS and Algorithms</option>
    								<option value="Frameworks">Frameworks</option>
    								<option value="Internet of Things">Internet of Things</option>
									<option value="Mobile App Development">Mobile App Development</option>
									<option value="Networking">Networking</option>
									<option value="Operating System">Operating System</option>
									<option value="Programming Languages">Programming languages</option>
									<option value="Software Development">Software Development</option>
    								<option value="Web Development">Web Development</option>
								</select>
								</p><br>
								<p>Original Fees
								<input type="number" name="fees" placeholder="eg: 2999" required="required"></p>
								<p>Discount (in %)
								<input type="number" name="discount" placeholder="eg: 50" required="required"></p>
								<p>Link
								<input type="text" name="url" placeholder="Paste the url of the course" required="required"></p>
								
								<input type="submit" name="" value="Submit">
							</form>
						</div>
					</div>
				
				</div>
				

				<!-- About Image -->
				<div class="col-lg-7">
					<div class="about_image"><img class="about_image" src="img/coursesthumbnail.jpg" alt=""></div>
				</div>
			
	</div>
</header>
</body>
</html>
	
<%
session.setAttribute("uname", uname);
		}
%>