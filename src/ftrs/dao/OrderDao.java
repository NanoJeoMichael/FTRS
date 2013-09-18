package ftrs.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;

import ftrs.entity.Client;
import ftrs.entity.Order;
import ftrs.entity.Ticket;
import ftrs.tools.ConnectDB;

public class OrderDao {
	private ConnectDB conn = new ConnectDB();

	// 查询数据
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public Collection query(String strif) {
		Order order;
		Collection orders = new ArrayList<Order>();
		String sql = "";
		if (strif != "all" && strif != null && strif != "") {
			sql = "select * from order where " + strif + "";
			System.out.println(sql);
		} else {
			sql = "select * from order";
		}
		ResultSet rs = conn.executeQuery(sql);
		try {
			while (rs.next()) {
				order = new Order();
				Ticket ticket = new Ticket();
				ticket.setId(rs.getString(1));
				order.setTicket(ticket);
				Client client = new Client();
				client.setId(rs.getString(2));
				order.setClient(client);
				order.setStatus(rs.getString(3));
				orders.add(order);
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		conn.close();
		return orders;
	}

	// 用于修改的查询
	public Order queryM(Order order2) {
		Order order = null;
		String sql = "select * from order where id="
				+ order2.getTicket().getId() + "";
		System.out.println("修改时的SQL：" + sql);
		ResultSet rs = conn.executeQuery(sql);
		try {
			while (rs.next()) {
				order = new Order();
				Ticket ticket = new Ticket();
				ticket.setId(rs.getString(1));
				order.setTicket(ticket);
				Client client = new Client();
				client.setId(rs.getString(2));
				order.setClient(client);
				order.setStatus(rs.getString(3));
			}
		} catch (SQLException ex) {
		}
		conn.close();
		return order;
	}

	// 添加数据
	public boolean insert(Order order) {
		String sql = "";
		int falg = 0;
		sql = "insert into order values('%s','%s','%s');";
		sql = String.format(sql, order.getTicket().getId(), order.getClient()
				.getId(), order.getStatus());
		falg = conn.executeUpdate(sql);
		System.out.println("添加SQL：" + sql);
		conn.close();
		System.out.println("falg:" + falg);
		if (falg == 0)
			return false;
		return true;
	}

	// 修改数据
	public boolean update(String id, Order order) {
		String sql = "";
		sql = "update order set ticket_id='%s',client_id='%s',status='%s' where id='%s';";
		sql = String.format(sql, order.getTicket().getId(), order.getClient()
				.getId(), order.getStatus(),id);
		int falg = conn.executeUpdate(sql);
		System.out.println("修改数据时的SQL：" + sql);
		conn.close();
		if (falg == 0)
			return false;
		return true;
	}

	// 删除数据
	public boolean delete(Order order) {
		String sql_1 = "SELECT * FROM order WHERE id=" + order.getTicket().getId() + "";
		ResultSet rs = conn.executeQuery(sql_1);
		try {
			if (rs.next()) {
				String sql = "Delete from order where id=" + order.getTicket().getId()
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
