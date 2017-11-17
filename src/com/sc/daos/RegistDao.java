package com.sc.daos;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.sc.utils.DBUtil;

public class RegistDao extends DBUtil {
	public boolean insertData(String user, String password) {
		Connection connection = null;
		PreparedStatement statement = null;	
		int rowCount = 0;
		try {
			connection = getConn();
			String sql = "insert into t_user(username, password) value(?,?)";
			statement = connection.prepareStatement(sql);

			statement.setString(1, user);
			statement.setString(2, password);

			rowCount = statement.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeConn(statement, connection);
		}

		if (rowCount > 0) {
			return true;
		}
		return false;
	}
}
