package ftrs.entity;

import java.sql.Timestamp;

public class ScheduleChange {
	String id;
	Schedule originSchedule;
	Timestamp time;
	String reason;
	String type;
	String remark;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Schedule getOriginSchedule() {
		return originSchedule;
	}
	public void setOriginSchedule(Schedule originSchedule) {
		this.originSchedule = originSchedule;
	}
	public Timestamp getTime() {
		return time;
	}
	public void setTime(Timestamp time) {
		this.time = time;
	}
	public String getReason() {
		return reason;
	}
	public void setReason(String reason) {
		this.reason = reason;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	
}
