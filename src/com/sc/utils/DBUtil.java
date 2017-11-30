package com.sc.utils;

import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * 数据库操作类
 * 
 * @author xiet
 *
 */

public class DBUtil {
	public static Connection getConn() {
		Connection conn = null;
		try {
			String clString = LoadDBConfig.getDBValue("driverclass");
//			System.out.println(clString);
			Class.forName(clString);
			String url = LoadDBConfig.getDBValue("url");
			String user = LoadDBConfig.getDBValue("username");
			String password = LoadDBConfig.getDBValue("password");

			conn = DriverManager.getConnection(url, user, password);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	public static void closeConn(ResultSet rs, Statement stat, Connection conn) {
		try {
			if (rs != null) {
				rs.close();
			}
			if (stat != null) {
				stat.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void closeConn(Statement stat, Connection conn) {
		try {
			if (stat != null) {
				stat.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
