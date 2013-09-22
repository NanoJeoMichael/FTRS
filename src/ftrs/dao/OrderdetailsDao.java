package ftrs.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;

import ftrs.entity.Order;
import ftrs.entity.OrderDetails;
import ftrs.entity.Ticket;
import ftrs.tools.ConnectDB;

public class OrderdetailsDao {
	private ConnectDB conn = new ConnectDB();

	// 查询数据
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public Collection query(String strif) {
		OrderDetails orderDetails;
		Collection orderDetailss = new ArrayList<OrderDetails>();
		String sql = "";
		if (strif != "all" && strif != null && strif != "") {
			sql = "select * from orderdetails where " + strif + "";
			System.out.println(sql);
		} else {
			sql = "select * from orderdetails";
		}
		ResultSet rs = conn.executeQuery(sql);
		try {
			while (rs.next()) {
				orderDetails = new OrderDetails();
				orderDetails.setOrder(new Order());
				orderDetails.getOrder().setTicket(new Ticket());
				orderDetails.getOrder().getTicket().setId(rs.getString(1));
				orderDetails.setAddTime(rs.getTimestamp(2));
				orderDetails.setStockTime(rs.getTimestamp(3));
				orderDetails.setDueTime(rs.getTimestamp(4));
				orderDetails.setSettleMoney(rs.getBigDecimal(5));
				orderDetails.setDiscount(rs.getFloat(6));
				orderDetails.setRemark(rs.getString(7));
				orderDetailss.add(orderDetails);
			}
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		conn.close();
		return orderDetailss;
	}

	// 用于修改的查询
	public OrderDetails queryM(OrderDetails orderDetails2) {
		OrderDetails orderDetails = null;
		String sql = "select * from orderdetails where order_ticket_id="
				+ orderDetails2.getOrder().getTicket().getId() + "";
		System.out.println("修改时的SQL：" + sql);
		ResultSet rs = conn.executeQuery(sql);
		try {
			while (rs.next()) {
				orderDetails = new OrderDetails();
				orderDetails.setOrder(new Order());
				orderDetails.getOrder().setTicket(new Ticket());
				orderDetails.getOrder().getTicket().setId(rs.getString(1));
				orderDetails.setAddTime(rs.getTimestamp(2));
				orderDetails.setStockTime(rs.getTimestamp(3));
				orderDetails.setDueTime(rs.getTimestamp(4));
				orderDetails.setSettleMoney(rs.getBigDecimal(5));
				orderDetails.setDiscount(rs.getFloat(6));
				orderDetails.setRemark(rs.getString(7));
			}
		} catch (SQLException ex) {
		}
		conn.close();
		return orderDetails;
	}

	// 添加数据
	public boolean insert(OrderDetails orderDetails) {
		String sql = "";
		int falg = 0;
		sql = "insert into orderdetails values('%s','%tx','%tx','%tx','";
		sql = String.format(sql, orderDetails.getOrder().getTicket().getId(),
				orderDetails.getAddTime(),
				orderDetails.getStockTime(),
				orderDetails.getDueTime());
		sql += orderDetails.getSettleMoney()+"',";
		sql += "'%f','%s');";
		sql = String.format(sql, orderDetails.getDiscount(), orderDetails.getRemark());
		falg = conn.executeUpdate(sql);
		System.out.println("添加SQL：" + sql);
		conn.close();
		System.out.println("falg:" + falg);
		if (falg == 0)
			return false;
		return true;
	}

	// 删除数据
	public boolean delete(OrderDetails orderDetails) {
		String sql_1 = "SELECT * FROM orderdetails WHERE id=" + orderDetails.getOrder().getTicket().getId() + "";
		ResultSet rs = conn.executeQuery(sql_1);
		try {
			if (rs.next()) {
				String sql = "Delete from orderdetails where id=" + orderDetails.getOrder().getTicket().getId()
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
