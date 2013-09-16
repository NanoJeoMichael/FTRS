package ftrs.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;

import ftrs.entity.Client;
import ftrs.entity.ClientType;
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
			sql = "select * from tb_client where " + strif + "";
			System.out.println(sql);
		} else {
			sql = "select * from tb_client";
		}
		ResultSet rs = conn.executeQuery(sql);
		try {
			while (rs.next()) {
				client = new Client();
				client.setId(rs.getString(1));
				ClientType ct = new ClientType();
				ct.setId(rs.getString(2));
				client.setClientType(ct);
				client.setIdNum(rs.getString(3));
				client.setPwd(rs.getString(4));
				client.setPhone(rs.getString(5));
				client.setEmail(rs.getString(6));
				client.setName(rs.getString(7));
				client.setAge(Integer.parseInt(rs.getString(8)));
				client.setSex(rs.getString(9));
				client.setAddress(rs.getString(10));
				client.setAmount(rs.getBigDecimal(11));
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
		String sql = "select * from tb_client where id=" + client2.getId() + "";
		System.out.println("修改时的SQL：" + sql);
		ResultSet rs = conn.executeQuery(sql);
		try {
			while (rs.next()) {
				client = new Client();
				client.setId(rs.getString(1));
				ClientType ct = new ClientType();
				ct.setId(rs.getString(2));
				client.setClientType(ct);
				client.setIdNum(rs.getString(3));
				client.setPwd(rs.getString(4));
				client.setPhone(rs.getString(5));
				client.setEmail(rs.getString(6));
				client.setName(rs.getString(7));
				client.setAge(Integer.parseInt(rs.getString(8)));
				client.setSex(rs.getString(9));
				client.setAddress(rs.getString(10));
				client.setAmount(rs.getBigDecimal(11));
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

		sql = "Insert into tb_client values('" + client.getId() + "','"
				+ client.getClientType().getId() + "','" + client.getIdNum()
				+ "','" + client.getPwd() + "','" + client.getPhone() + "','"
				+ client.getEmail() + "','" + client.getName() + "','"
				+ client.getAge() + "','" + client.getSex() + "','"
				+ client.getAddress() + "','" + client.getAmount() + "'" + ")";
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
	public boolean update(Client client) {
		String sql = "update tb_client set ct_id='"
				+ client.getClientType().getId() + "',id_num='"
				+ client.getIdNum() + "',pwd='" + client.getPwd() + "',phone='"
				+ client.getPhone() + "',email='" + client.getEmail()
				+ "',name='" + client.getName() + "',age='" + client.getAge()
				+ "',sex='" + client.getSex() + "',address='"
				+ client.getAddress() + "',amount='" + client.getAmount()
				+ "' " + "where id='" + client.getId() + "'";

		int falg = conn.executeUpdate(sql);
		System.out.println("修改数据时的SQL：" + sql);
		conn.close();
		if (falg == 0)
			return false;
		return true;
	}

	// 删除数据
	public boolean delete(Client client) {
		String sql_1 = "SELECT * FROM tb_airport WHERE id=" + client.getId()
				+ "";
		ResultSet rs = conn.executeQuery(sql_1);
		try {
			if (rs.next()) {
				String sql = "Delete from tb_airport where id="
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
