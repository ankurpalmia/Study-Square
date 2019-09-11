package ss.control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import ss.service.AddCourseService;
public class BookCourse extends HttpServlet {
	public void service(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		String cname=request.getParameter("cname");
		String category=request.getParameter("category");
		String tname=request.getParameter("tname");
		String name=request.getParameter("name");
		String phone=request.getParameter("phone");
		String email=request.getParameter("email");
		
		AddCourseService afs=new AddCourseService();
		afs.bookNewCourse(cname,tname,category,name,phone,email);
		RequestDispatcher rd=request.getRequestDispatcher("booked.html");
		rd.forward(request, response);
		
	}
}
