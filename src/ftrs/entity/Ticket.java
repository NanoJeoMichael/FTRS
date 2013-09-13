package ftrs.entity;

import java.math.BigDecimal;

public class Ticket {
	private String id;
	private Schedule shcecule;
	private int seat;
	private SeatType seatType;
	private BigDecimal price;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Schedule getShcecule() {
		return shcecule;
	}
	public void setShcecule(Schedule shcecule) {
		this.shcecule = shcecule;
	}
	public int getSeat() {
		return seat;
	}
	public void setSeat(int seat) {
		this.seat = seat;
	}
	public SeatType getSeatType() {
		return seatType;
	}
	public void setSeatType(SeatType seatType) {
		this.seatType = seatType;
	}
	public BigDecimal getPrice() {
		return price;
	}
	public void setPrice(BigDecimal price) {
		this.price = price;
	}
	
}
