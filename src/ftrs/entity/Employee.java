package ftrs.entity;

public class Employee {
	private String id;
	private Employeetype type;
	private String pwdString;
	private String name;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	
	public Employeetype getType() {
		return type;
	}
	public void setType(Employeetype type) {
		this.type = type;
	}
	public String getPwdString() {
		return pwdString;
	}
	public void setPwdString(String pwdString) {
		this.pwdString = pwdString;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
}
