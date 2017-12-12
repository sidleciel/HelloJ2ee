<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% out.println("Hello World"); %>
	
	<br><h1>设置Cookie</h1>
	<form action="cookies.jsp" method="get">
	站点名：<input type="text" name="name" value="菜鸟教程"><br>
	网址：<input type="text" name="url" value="www.runoob.com">
	<input type="submit" value="提交">
	</form>
</body>
</html>