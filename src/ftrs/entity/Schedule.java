package ftrs.entity;

import java.sql.Time;

public class Schedule {
	String id;
	Flight flight;
	Time scheduleTime;
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
	public Time getScheduleTime() {
		return scheduleTime;
	}
	public void setScheduleTime(Time scheduleTime) {
		this.scheduleTime = scheduleTime;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
}
