<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>SELECT 操作</title>
</head>
<body>
	<%--
JDBC 驱动名及数据库 URL 
数据库的用户名与密码，需要根据自己的设置
useUnicode=true&characterEncoding=utf-8 防止中文乱码
 --%>

	<sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/testdatabase?useUnicode=true&characterEncoding=utf-8"
		user="root" password="123456" />

	<%-- 		插入操作 --%>
	<sql:update var="insert" dataSource="${snapshot }">
 replace into websites (name, url, alexa, country) values ('菜鸟教程移动站', 'http://m.runoob.com', 5093, 'CN'); 
</sql:update>

	<%--
删除 ID 为 36 的数据
 --%>
	<sql:update dataSource="${snapshot}" var="delete">
  DELETE FROM websites WHERE id = ?
  <sql:param value="${36}" />
	</sql:update>

	<sql:query var="result" dataSource="${snapshot}">
select * from websites;
</sql:query>

	<c:out value="${delete }"></c:out>

	<h1>JSP 数据库实例 - 菜鸟教程</h1>
	<table border="1" width="100%">
		<tr>
			<th>ID</th>
			<th>站点名</th>
			<th>站点地址</th>
			<th>排名</th>
			<th>国家</th>
		</tr>
		<c:forEach var="row" items="${result.rows }">
			<tr>
				<td><c:out value="${row.id }" /></td>
				<td><c:out value="${row.name }" /></td>
				<td><c:out value="${row.url }" /></td>
				<td><c:out value="${row.alexa }" /></td>
				<td><c:out value="${row.country }" /></td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>