package ftrs.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;

import ftrs.entity.*;
import ftrs.tools.ConnectDB;

public class AirportDao {
	private ConnectDB conn = new ConnectDB();

	// 查询数据
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public Collection query(String strif) {
		Airport airport = null;
		Collection airportColl = new ArrayList<Airport>();
		String sql = "";
		if (strif != "all" && strif != null && strif != "") {
			sql = "select * from tb_airport where " + strif + "";
		} else {
			sql = "select * from tb_airport";
		}
		ResultSet rs = conn.executeQuery(sql);
		try {
			while (rs.next()) {
				airport = new Airport();
				airport.setId(rs.getString(1));
				airport.setName(rs.getString(2));
				airport.setAddress(rs.getString(3));
				airportColl.add(airport);
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		conn.close();
		return airportColl;
	}

	// 用于修改的查询
	public Airport queryM(Airport airport) {
		Airport airport2 = null;
		String sql = "select * from tb_airport where id=" + airport.getId()
				+ "";
		System.out.println("修改时的SQL：" + sql);
		ResultSet rs = conn.executeQuery(sql);
		try {
			while (rs.next()) {
				airport2 = new Airport();
				airport2.setId(rs.getString(1));
				airport2.setName(rs.getString(2));
			}
		} catch (SQLException ex) {
		}
		conn.close();
		return airport2;
	}

	// 添加数据
	public boolean insert(Airport airport) {
		String sql = "";
		int falg = 0;

		sql = "Insert into tb_airport values('" + airport.getId() + "','"
				+ airport.getName() + "','" + airport.getAddress() + "')";
		falg = conn.executeUpdate(sql);
		System.out.println("添加SQL：" + sql);
		conn.close();
		System.out.println("falg:" + falg);
		if (falg == 0)
			return false;
		return true;
	}

	// 修改数据
	public boolean update(Airport airport) {
		String sql = "Update tb_airport set name='" + airport.getName()
				+ "', address='" + airport.getAddress() + "' where id='"
				+ airport.getId() + "'";
		int falg = conn.executeUpdate(sql);
		System.out.println("修改数据时的SQL：" + sql);
		conn.close();
		if (falg == 0)
			return false;
		return true;
	}

	// 删除数据
	public boolean delete(Airport airport) {
		String sql_1 = "SELECT * FROM tb_airport WHERE id="
				+ airport.getId() + "";
		ResultSet rs = conn.executeQuery(sql_1);
		try {
			if (rs.next()) {
				String sql = "Delete from tb_airport where id="
						+ airport.getId() + "";
				conn.executeUpdate(sql);
				System.out.println("删除时的SQL：" + sql);
			}
			else 
				return false;
		} catch (Exception e) {
			return false;
		}
		return true;
	}

}
