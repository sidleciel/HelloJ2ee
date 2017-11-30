<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.io.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Form Processing</title>
</head>
<body>
	<!-- http://192.168.70.57:8080/WebDemo/form_processing.jsp?name=rhodes&url=http://www.baidu.com -->
	<h1>使用get方法读取数据</h1>
	<ul>
		<li>
			<p>
				<b>站点名：</b>
				<%=request.getParameter("name")%></p>
		</li>
		<li>
			<p>
				<b>网址：</b> <a href="<%=request.getParameter("url")%>"><%=request.getParameter("url")%></a>
			</p>
		</li>
	</ul>
</body>
</html>