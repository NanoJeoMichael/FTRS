package ftrs.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;

import ftrs.entity.Client;
import ftrs.tools.ConnectDB;

public class ClientDao {
	private ConnectDB conn = new ConnectDB();

	// 查询数据
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public Collection query(String strif) {
		Client client = null;
		Collection clients = new ArrayList<Client>();
		String sql = "";
		if (strif != "all" && strif != null && strif != "") {
			sql = "select * from client where " + strif + "";
			System.out.println(sql);
		} else {
			sql = "select * from client";
		}
		ResultSet rs = conn.executeQuery(sql);
		try {
			while (rs.next()) {
				client = new Client();
				client.setId(rs.getString(1));
				client.setPwd(rs.getString(2));
				client.setEmail(rs.getString(3));
				client.setName(rs.getString(4));
				client.setBirDate(rs.getDate(5));
				client.setSex(rs.getString(6));
				clients.add(client);
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		conn.close();
		return clients;
	}

	// 用于修改的查询
	public Client queryM(Client client2) {
		Client client = null;
		String sql = "select * from client where id=" + client2.getId() + "";
		System.out.println("修改时的SQL：" + sql);
		ResultSet rs = conn.executeQuery(sql);
		try {
			while (rs.next()) {
				client = new Client();
				client.setId(rs.getString(1));
				client.setPwd(rs.getString(2));
				client.setEmail(rs.getString(3));
				client.setName(rs.getString(4));
				client.setBirDate(rs.getDate(5));
				client.setSex(rs.getString(6));
			}
		} catch (SQLException ex) {
		}
		conn.close();
		return client;
	}

	// 添加数据
	public boolean insert(Client client) {
		String sql = "";
		int falg = 0;
		sql = "Insert into client values('" + client.getId() + "','"
				+ client.getPwd() + "','" + client.getEmail() + "','"
				+ client.getName() + "','" + client.getBirDate() + "','"
				+ client.getSex() + "'" + ");";
		falg = conn.executeUpdate(sql);
		System.out.println("添加SQL：" + sql);
		conn.close();
		System.out.println("falg:" + falg);
		if (falg == 0)
			return false;
		return true;
	}

	public Client check(Client client) {
		String sql = "id=" + "'" + client.getId() + "' or email='"
				+ client.getEmail() + "' and pwd='" + client.getPwd() + "'";
		System.out.println("check: " + sql);
		@SuppressWarnings("unchecked")
		ArrayList<Client> clients = (ArrayList<Client>) query(sql);
		if (clients.size() == 0)
			return null;
		return clients.get(0);
	}

	// 修改数据
	public boolean update(String id, Client client) {
		String sql = "";
		sql = "update client set id='" + client.getId() + "', pwd='"
				+ client.getPwd() + "',email='" + client.getEmail() + "', name='"
				+ client.getName() + "', birthDay='"
				+ client.getBirDate().toString() + "',sex='" + client.getSex()
				+ "'  where id='" + id + "';";
		int falg = conn.executeUpdate(sql);
		System.out.println("修改数据时的SQL：" + sql);
		conn.close();
		if (falg == 0)
			return false;
		return true;
	}

	// 删除数据
	public boolean delete(Client client) {
		String sql_1 = "SELECT * FROM client WHERE id=" + client.getId()
				+ "";
		ResultSet rs = conn.executeQuery(sql_1);
		try {
			if (rs.next()) {
				String sql = "Delete from client where id="
						+ client.getId() + "";
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
