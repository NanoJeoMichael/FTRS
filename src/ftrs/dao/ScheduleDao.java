package ftrs.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;

import ftrs.entity.Airport;
import ftrs.entity.Company;
import ftrs.entity.Flight;
import ftrs.entity.Schedule;
import ftrs.tools.ConnectDB;

public class ScheduleDao {
	private ConnectDB conn = new ConnectDB();

	// 查询数据
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public Collection query(String strif) {
		Schedule schedule;
		Collection schedules = new ArrayList<Schedule>();
		String sql = "";
		if (strif != "all" && strif != null && strif != "") {
			sql = "select * from schedule where " + strif + "";
			System.out.println(sql);
		} else {
			sql = "select * from schedule";
		}
		ResultSet rs = conn.executeQuery(sql);
		try {
			while (rs.next()) {
				schedule = new Schedule();
				schedules.add(schedule);
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		conn.close();
		return schedules;
	}

	// 用于修改的查询
	public Flight queryM(Flight flight2) {
		Flight flight = null;
		String sql = "select * from flight where id=" + flight2.getId() + "";
		System.out.println("修改时的SQL：" + sql);
		ResultSet rs = conn.executeQuery(sql);
		try {
			while (rs.next()) {
				flight = new Flight();
				flight.setId(rs.getString(1));
				flight.setGoTime(rs.getTime(2));
				flight.setReachTime(rs.getTime(3));
				flight.setType(rs.getString(4));
				flight.setReachAirport(new Airport());
				flight.getReachAirport().setId(rs.getInt(5));
				flight.setGoAirport(new Airport());
				flight.getGoAirport().setId(rs.getInt(6));
				flight.setCompany(new Company());
				flight.getCompany().setId(rs.getInt(7));
			}
		} catch (SQLException ex) {
		}
		conn.close();
		return flight;
	}

	// 添加数据
	public boolean insert(Flight flight) {
		String sql = "";
		int falg = 0;
		sql = "Insert into flight values('" + flight.getId() + "','"
				+ flight.getGoTime() + "','" + flight.getReachTime() + "','"
				+ flight.getType() + "','" + flight.getReachAirport().getId()
				+ "','" + flight.getGoAirport().getId() + "','"
				+ flight.getCompany().getId() + "'" + ");";
		falg = conn.executeUpdate(sql);
		System.out.println("添加SQL：" + sql);
		conn.close();
		System.out.println("falg:" + falg);
		if (falg == 0)
			return false;
		return true;
	}

	// 修改数据
	public boolean update(String id, Flight flight) {
		String sql = "";
		sql = "update flight set id='" + flight.getId() + "', goTime='"
				+ flight.getGoTime() + "',reachTime='" + flight.getReachTime()
				+ "', type='" + flight.getType() + "', reacn_airport='"
				+ flight.getReachAirport().getId() + "',go_airport='"
				+ flight.getGoAirport().getId() + "',company_id'"
				+ flight.getCompany().getId() + "'  where id='" + id + "';";
		int falg = conn.executeUpdate(sql);
		System.out.println("修改数据时的SQL：" + sql);
		conn.close();
		if (falg == 0)
			return false;
		return true;
	}

	// 删除数据
	public boolean delete(Flight flight) {
		String sql_1 = "SELECT * FROM flight WHERE id=" + flight.getId() + "";
		ResultSet rs = conn.executeQuery(sql_1);
		try {
			if (rs.next()) {
				String sql = "Delete from flight where id=" + flight.getId()
						+ "";
				conn.executeUpdate(sql);
				System.out.println("删除时的SQL：" + sql);
			} else
				return false;
		} catch (Exception e) {
			return false;
		}
		return true;
	}
}
