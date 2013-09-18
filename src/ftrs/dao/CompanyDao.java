package ftrs.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;

import ftrs.entity.Company;
import ftrs.tools.ConnectDB;

public class CompanyDao {
	private ConnectDB conn = new ConnectDB();

	// 查询数据
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public Collection query(String strif) {
		Company company = null;
		Collection companys = new ArrayList<Company>();
		String sql = "";
		if (strif != "all" && strif != null && strif != "") {
			sql = "select * from company where " + strif + "";
		} else {
			sql = "select * from company";
		}
		ResultSet rs = conn.executeQuery(sql);
		try {
			while (rs.next()) {
				company = new Company();
				company.setId(rs.getInt(1));
				company.setName(rs.getString(2));		
				companys.add(company);
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		conn.close();
		return companys;
	}

	// 用于修改的查询
	@SuppressWarnings("null")
	public Company queryM(Company company) {
		Company company2 = null;
		String sql = "select * from company where id=" + company.getId()
				+ "";
		System.out.println("修改时的SQL：" + sql);
		ResultSet rs = conn.executeQuery(sql);
		try {
			while (rs.next()) {
				company2.setId(rs.getInt(1));
				company2.setName(rs.getString(2));
			}
		} catch (SQLException ex) {
		}
		conn.close();
		return company2;
	}

	// 添加数据
	public boolean insert(Company company) {
		String sql = "";
		int falg = 0;

		sql = "Insert into company values('" + company.getId() + "','"
				+ company.getName() +  "')";
		falg = conn.executeUpdate(sql);
		System.out.println("添加SQL：" + sql);
		conn.close();
		System.out.println("falg:" + falg);
		if (falg == 0)
			return false;
		return true;
	}

	// 修改数据
	public boolean update(Company company) {
		String sql = "Update company set name='" + company.getName()
				+ "' where id='"
				+ company.getId() + "'";
		int falg = conn.executeUpdate(sql);
		System.out.println("修改数据时的SQL：" + sql);
		conn.close();
		if (falg == 0)
			return false;
		return true;
	}

	// 删除数据
	public boolean delete(Company company) {
		String sql_1 = "SELECT * FROM company WHERE id="
				+ company.getId() + "";
		ResultSet rs = conn.executeQuery(sql_1);
		try {
			if (rs.next()) {
				String sql = "Delete from airport where id="
						+ company.getId() + "";
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
