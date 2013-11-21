package mybeans;

import java.sql.*;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class OrderDao {

	private static OrderDao instance = new OrderDao();

	public static OrderDao getInstance() {
		return instance;
	}

	private OrderDao() {
	}

	private Connection getConnection() throws Exception {
		Context initCtx = new InitialContext();
		Context envCtx = (Context) initCtx.lookup("java:comp/env");
		DataSource ds = (DataSource) envCtx.lookup("mysql");
		return ds.getConnection();
	}

	public void insertOrder(OrderVo order) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = getConnection();

			pstmt = conn
					.prepareStatement("insert into ORDERMENU values (?,?,?,?,?)");
			pstmt.setString(1, order.getName());
			pstmt.setString(2, order.getPhoneNumber());
			pstmt.setString(3, order.getAddress());
			pstmt.setString(4, order.getMenuAndCount());
			pstmt.setString(5, order.getSumPrice());
			pstmt.executeUpdate();
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException ex) {
				}
		}
	}// insert

	public Vector<OrderVo> selectOrder() throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		Vector<OrderVo> vector = new Vector<OrderVo>();

		try {
			conn = getConnection();

			pstmt = conn.prepareStatement("select * from ordermenu");
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				OrderVo order = new OrderVo();
				order.setName(rs.getString(1));
				order.setPhoneNumber(rs.getString(2));
				order.setAddress(rs.getString(3));
				order.setMenuAndCount(rs.getString(4));
				order.setSumPrice(rs.getString(5));
				vector.add(order);
			}

		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException ex) {
				}
		}
		return vector;
	}// select

	public void modifyOrder(OrderVo vo) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;

		try {
			conn = getConnection();

			pstmt = conn
					.prepareStatement("update ordermenu set phoneNumber=?,address=?, menuandcount=?, sumprice=? where name=?");
			pstmt.setString(1, vo.getPhoneNumber());
			pstmt.setString(2, vo.getAddress());
			pstmt.setString(3, vo.getMenuAndCount());
			pstmt.setString(4, vo.getSumPrice());
			pstmt.setString(5, vo.getName());

			pstmt.executeUpdate();
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException ex) {
				}
		}
	}// modify

	public void deleteOrder(String name) throws Exception {
		Connection conn = null;
		PreparedStatement pstmt = null;
		try {
			conn = getConnection();

			pstmt = conn
					.prepareStatement("delete from ordermenu where name = ?");
			pstmt.setString(1, name);
			pstmt.execute();
		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			if (pstmt != null)
				try {
					pstmt.close();
				} catch (SQLException ex) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException ex) {
				}
		}
	}// delete
}
