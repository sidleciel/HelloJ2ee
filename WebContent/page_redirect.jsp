<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>页面重定向</title>
</head>
<body>
<h1>页面重定向</h1>
<%
String site = "http://www.runoob.com";
response.setStatus(response.SC_TEMPORARY_REDIRECT);
response.setHeader("Location", site);
%>
</body>
</html>