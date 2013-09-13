package ftrs.entity;

import java.math.BigDecimal;
import java.sql.Timestamp;

public class OrderDetails {
	String id;
	Timestamp startTime;
	Timestamp settleTime;
	Timestamp dueTime;
	BigDecimal settleMoney;
	double discount;
	String remark;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Timestamp getStartTime() {
		return startTime;
	}
	public void setStartTime(Timestamp startTime) {
		this.startTime = startTime;
	}
	public Timestamp getSettleTime() {
		return settleTime;
	}
	public void setSettleTime(Timestamp settleTime) {
		this.settleTime = settleTime;
	}
	public Timestamp getDueTime() {
		return dueTime;
	}
	public void setDueTime(Timestamp dueTime) {
		this.dueTime = dueTime;
	}
	public BigDecimal getSettleMoney() {
		return settleMoney;
	}
	public void setSettleMoney(BigDecimal settleMoney) {
		this.settleMoney = settleMoney;
	}
	public double getDiscount() {
		return discount;
	}
	public void setDiscount(double discount) {
		this.discount = discount;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
}
