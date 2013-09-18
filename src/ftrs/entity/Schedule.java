package ftrs.entity;

import java.sql.Date;

public class Schedule {
	String id;
	Flight flight;
	Date goDate;
	String status;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Flight getFlight() {
		return flight;
	}
	public void setFlight(Flight flight) {
		this.flight = flight;
	}
	public Date getGoDate() {
		return goDate;
	}
	public void setGoDate(Date goDate) {
		this.goDate = goDate;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
}
