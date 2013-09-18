package ftrs.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;

import ftrs.entity.Manager;
import ftrs.tools.ConnectDB;

public class ManagerDao {
	private ConnectDB conn = new ConnectDB();

	// 查询数据
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public Collection query(String strif) {
		Manager manager;
		Collection managers = new ArrayList<Manager>();
		String sql = "";
		if (strif != "all" && strif != null && strif != "") {
			sql = "select * from manager where " + strif + "";
			System.out.println(sql);
		} else {
			sql = "select * from manager";
		}
		ResultSet rs = conn.executeQuery(sql);
		try {
			while (rs.next()) {
				manager = new Manager();
				manager.setId(rs.getString(1));
				manager.setPwd(rs.getString(2));
				manager.setName(rs.getString(3));
				manager.setEmail(rs.getString(4));
				managers.add(manager);
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		conn.close();
		return managers;
	}

	// 用于修改的查询
	public Manager queryM(Manager manager2) {
		Manager manager = null;
		String sql = "select * from manager where id=" + manager2.getId() + "";
		System.out.println("修改时的SQL：" + sql);
		ResultSet rs = conn.executeQuery(sql);
		try {
			while (rs.next()) {
				manager = new Manager();
				manager.setId(rs.getString(1));
				manager.setPwd(rs.getString(2));
				manager.setName(rs.getString(3));
				manager.setEmail(rs.getString(4));
			}
		} catch (SQLException ex) {
		}
		conn.close();
		return manager;
	}

	// 添加数据
	public boolean insert(Manager manager) {
		String sql = "";
		int falg = 0;
		sql = "Insert into flight values('" + manager.getId() + "','"
				+ manager.getPwd() + "','" + manager.getName() + "','"
				+ manager.getName() + "','" + manager.getEmail()
				+ "'" + ");";
		falg = conn.executeUpdate(sql);
		System.out.println("添加SQL：" + sql);
		conn.close();
		System.out.println("falg:" + falg);
		if (falg == 0)
			return false;
		return true;
	}

	// 修改数据
	public boolean update(String id, Manager manager) {
		String sql = "";
		sql = "update manager set id='" + manager.getId() + "', pwd='"
				+ manager.getPwd() + "',name='" + manager.getName()
				+ "', email='" + manager.getEmail()
				+ "'  where id='" + id + "';";
		int falg = conn.executeUpdate(sql);
		System.out.println("修改数据时的SQL：" + sql);
		conn.close();
		if (falg == 0)
			return false;
		return true;
	}

	// 删除数据
	public boolean delete(Manager manager) {
		String sql_1 = "SELECT * FROM manager WHERE id=" + manager.getId() + "";
		ResultSet rs = conn.executeQuery(sql_1);
		try {
			if (rs.next()) {
				String sql = "Delete from flight where id=" + manager.getId()
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
