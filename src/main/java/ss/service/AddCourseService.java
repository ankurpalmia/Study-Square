package ss.service;

import javax.servlet.http.HttpServlet;

import ss.entity.BookEntity;
import ss.entity.CourseEntity;

public class AddCourseService extends HttpServlet {

	public void bookNewCourse(String cname, String tname, String category, String name, String phone, String email) {
		// TODO Auto-generated method stub
		BookEntity bk=new BookEntity(cname,tname,category,name,phone,email);
		OfyService.ofy().save().entity(bk).now();
	}

	public void addNewCourse(String cname, String tname, String category, String fees, String discount, String curl) {
		// TODO Auto-generated method stub
		CourseEntity ce=new CourseEntity(cname, tname, category, fees, discount, curl);
		OfyService.ofy().save().entity(ce).now();
		
	}
	

}
