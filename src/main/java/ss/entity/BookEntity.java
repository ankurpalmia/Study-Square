package ss.entity;

import com.googlecode.objectify.annotation.Entity;
import com.googlecode.objectify.annotation.Id;
@Entity
public class BookEntity {
	@Id
	public String cname;
	public String tname;
	public String category;
	public String name;
	public String phone;
	public String email;
	
	public BookEntity() {
		// TODO Auto-generated constructor stub
	}
	
	public BookEntity(String cname, String tname, String category, String name, String phone, String email) {
		// TODO Auto-generated constructor stub
		this.cname=cname;
		this.tname=tname;
		this.name=name;
		this.category=category;
		this.phone=phone;
		this.email=email;
	}

}
