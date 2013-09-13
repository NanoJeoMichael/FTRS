package ftrs.entity;

import java.sql.Timestamp;

public class Flight {
	private String id;
	private String comId;
	private Timestamp depdate;
	private Timestamp reachdate;
	private Airport deport;
	private String planeType;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getComId() {
		return comId;
	}
	public void setComId(String comId) {
		this.comId = comId;
	}
	public Timestamp getDepdate() {
		return depdate;
	}
	public void setDepdate(Timestamp depdate) {
		this.depdate = depdate;
	}
	public Timestamp getReachdate() {
		return reachdate;
	}
	public void setReachdate(Timestamp reachdate) {
		this.reachdate = reachdate;
	}
	public Airport getDeport() {
		return deport;
	}
	public void setDeport(Airport deport) {
		this.deport = deport;
	}
	public String getPlaneType() {
		return planeType;
	}
	public void setPlaneType(String planeType) {
		this.planeType = planeType;
	}
}
