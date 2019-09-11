package ss.service;

import com.googlecode.objectify.Objectify;
import com.googlecode.objectify.ObjectifyService;

import ss.entity.BookEntity;
import ss.entity.CourseEntity;
public class OfyService {

	static{
		ObjectifyService.register(BookEntity.class);

		ObjectifyService.register(CourseEntity.class);
		
	}
	public  static Objectify ofy(){
		return ObjectifyService.ofy();
	}
}
