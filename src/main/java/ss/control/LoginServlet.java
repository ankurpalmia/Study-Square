package ss.control;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class LoginServlet extends HttpServlet {
	public void service(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		String uname=request.getParameter("uname");
		String pass=request.getParameter("pass");
		
		//LoginService user=new LoginService();
		RequestDispatcher rd=request.getRequestDispatcher("dashboard.jsp");
		if(uname.equals("username")&&pass.equals("password")){
			HttpSession session=request.getSession();
			session.setAttribute("uname", uname);
			rd.forward(request, response);
		}
		else{
			response.sendRedirect("loginerror.html");
		}
	}
}