package ftrs.entity;

import java.sql.Time;

public class Flight {
	String id;
	Time goTime;
	Time reachTime;
	String type;
	Airport reachAirport;
	Airport goAirport;
	Company company;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Time getGoTime() {
		return goTime;
	}
	public void setGoTime(Time goTime) {
		this.goTime = goTime;
	}
	public Time getReachTime() {
		return reachTime;
	}
	public void setReachTime(Time reachTime) {
		this.reachTime = reachTime;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public Airport getReachAirport() {
		return reachAirport;
	}
	public void setReachAirport(Airport reachAirport) {
		this.reachAirport = reachAirport;
	}
	public Airport getGoAirport() {
		return goAirport;
	}
	public void setGoAirport(Airport goAirport) {
		this.goAirport = goAirport;
	}
	public Company getCompany() {
		return company;
	}
	public void setCompany(Company company) {
		this.company = company;
	}
	
}
