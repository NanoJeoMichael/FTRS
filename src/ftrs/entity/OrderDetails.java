package ftrs.entity;

import java.math.BigDecimal;
import java.sql.Timestamp;

public class OrderDetails {
	Order order;
	Timestamp addTime;
	Timestamp stockTime;
	Timestamp dueTime;
	BigDecimal settleMoney;
	float discount;
	String remark;
	public Order getOrder() {
		return order;
	}
	public void setOrder(Order order) {
		this.order = order;
	}
	public Timestamp getAddTime() {
		return addTime;
	}
	public void setAddTime(Timestamp addTime) {
		this.addTime = addTime;
	}
	public Timestamp getStockTime() {
		return stockTime;
	}
	public void setStockTime(Timestamp stockTime) {
		this.stockTime = stockTime;
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
	public float getDiscount() {
		return discount;
	}
	public void setDiscount(float discount) {
		this.discount = discount;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
}
