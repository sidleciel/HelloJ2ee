<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>获取cookie</title>
</head>
<body>
	<%
		Cookie cookie = null;
		Cookie[] cookies = null;
		cookies = request.getCookies();
		if (cookies != null) {
			out.println("<h2>查找Cookie名与值</h2>");
			for (int i = 0; i < cookies.length; i++) {
				cookie = cookies[i];
				String name = cookie.getName();
				String val = cookie.getValue();
				val = URLDecoder.decode(val, "utf-8");

				out.print("参数名：" + name);
				out.print("<br>");
				out.print("参数值：" + val);
				out.print("<br>------------------------------------<br>");
			}
		} else {
			out.println("<h2>没有发现Cookie</h2>");
		}
	%>
</body>
</html>