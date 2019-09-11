package ss.entity;

import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;

@Entity
public class CourseEntity{
	@Id
	public String cname;
	public String tname;
	public String category;
	public String fees;
	public String discount;
	public String curl;
	
	public CourseEntity() {
		// TODO Auto-generated constructor stub
	}
	
	public CourseEntity(String cname, String tname, String category, String fees, String discount, String curl) {
		// TODO Auto-generated constructor stub
		this.cname=cname;
		this.tname=tname;
		this.category=category;
		this.fees=fees;
		this.discount=discount;
		this.curl=curl;
	}
}
