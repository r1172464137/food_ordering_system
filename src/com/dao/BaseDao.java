package com.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;

public class BaseDao {

	// 查询多个记录
	protected Vector selectSomeNote(String sql) {
		Vector<Vector<Object>> vector = new Vector<Vector<Object>>();// 创建结果集向量
		Connection conn = JDBC.getConnection();// 获得数据库连接
		try {
			Statement stmt = conn.createStatement();// 创建连接状态对象
			ResultSet rs = stmt.executeQuery(sql);// 执行SQL语句获得查询结果
			int columnCount = rs.getMetaData().getColumnCount();// 获得查询数据表的列数
			int row = 1;// 定义行序号
			while (rs.next()) {// 遍历结果集
				Vector<Object> rowV = new Vector<Object>();// 创建行向量
				rowV.add(new Integer(row++));// 添加行序号
				for (int column = 1; column <= columnCount; column++) {
					rowV.add(rs.getObject(column));// 添加列值
				}
				vector.add(rowV);// 将行向量添加到结果集向量中
			}
			rs.close();// 关闭结果集对象
			stmt.close();// 关闭连接状态对象
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return vector;// 返回结果集向量
	}

	// 查询单个记录
	protected Vector selectOnlyNote(String sql) {
		Vector<Object> vector = null;
		Connection conn = JDBC.getConnection();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			int columnCount = rs.getMetaData().getColumnCount();
			while (rs.next()) {
				vector = new Vector<Object>();
				for (int column = 1; column <= columnCount; column++) {
					vector.add(rs.getObject(column));
				}
			}
			rs.close();
			stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return vector;
	}

	// 查询多个值
	protected Vector selectSomeValue(String sql) {
		Vector<Object> vector = new Vector<Object>();
		Connection conn = JDBC.getConnection();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				vector.add(rs.getObject(1));
			}
			rs.close();
			stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return vector;
	}

	// 查询单个值
	protected Object selectOnlyValue(String sql) {
		Object value = null;
		Connection conn = JDBC.getConnection();
		try {
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			while (rs.next()) {
				value = rs.getObject(1);
			}
			rs.close();
			stmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return value;
	}

	// 插入、修改、删除记录
	public boolean longHaul(String sql) {
		boolean isLongHaul = true;// 默认持久化成功
		Connection conn = JDBC.getConnection();// 获得数据库连接
		try {
			conn.setAutoCommit(false);// 设置为手动提交
			Statement stmt = conn.createStatement();// 创建连接状态对象
			stmt.executeUpdate(sql);// 执行SQL语句
			stmt.close();// 关闭连接状态对象
			conn.commit();// 提交持久化
		} catch (SQLException e) {
			isLongHaul = false;// 持久化失败
			try {
				conn.rollback();// 回滚
			} catch (SQLException e1) {
				e1.printStackTrace();
			}
			e.printStackTrace();
		}
		return isLongHaul;// 返回持久化结果
	}
	public static void main(String[] args) {
		BaseDao d=new BaseDao();
		d.longHaul("delete from tb_order_item");
		d.longHaul("delete from tb_order_form");
		d.longHaul("delete from tb_user");
	}
}
