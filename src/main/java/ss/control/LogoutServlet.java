package ss.control;

import java.io.IOException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LogoutServlet extends HttpServlet {
	public void service(HttpServletRequest request, HttpServletResponse response) throws IOException{
		request.getSession().invalidate();
		response.sendRedirect("index.jsp");
	}}
