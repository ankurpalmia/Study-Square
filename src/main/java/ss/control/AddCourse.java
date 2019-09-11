package ss.control;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import ss.service.AddCourseService;
public class AddCourse extends HttpServlet {
	public void service(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		String cname=request.getParameter("cname");
		String tname=request.getParameter("tname");
		String category=request.getParameter("category");
		String fees=request.getParameter("fees");
		String discount=request.getParameter("discount");
		String curl=request.getParameter("url");
		
		AddCourseService afs=new AddCourseService();
		afs.addNewCourse(cname,tname,category,fees,discount,curl);
		RequestDispatcher rd=request.getRequestDispatcher("/dashboard.jsp");
		rd.forward(request, response);
		
	}
}
