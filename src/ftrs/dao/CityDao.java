package ftrs.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;

import ftrs.entity.City;
import ftrs.tools.ConnectDB;

public class CityDao {
	private ConnectDB conn = new ConnectDB();

	// 查询数据
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public Collection query(String strif) {
		City city = null;
		Collection cities = new ArrayList<City>();
		String sql = "";
		if (strif != "all" && strif != null && strif != "") {
			sql = "select * from city where " + strif + "";
		} else {
			sql = "select * from city";
		}
		ResultSet rs = conn.executeQuery(sql);
		try {
			while (rs.next()) {
				city = new City();
				city.setId(rs.getInt("CityID"));
				city.setName(rs.getString("cityName"));
				cities.add(city);
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		conn.close();
		return cities;
	}
}
