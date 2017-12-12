<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="utf-8"%>
<%@ page import="java.net.*"%>
<%
	String s = new String(request.getParameter("name").getBytes("ISO-8859-1"), "utf-8");
	s = URLEncoder.encode(s, "utf-8");

	Cookie name = new Cookie("name", s);
	Cookie url = new Cookie("url", request.getParameter("url"));

	int expiry = 60 * 60 * 24;
	name.setMaxAge(expiry);
	url.setMaxAge(expiry);

	response.addCookie(name);
	response.addCookie(url);
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Cookie设置</title>
</head>
<body>
	<h1>设置 Cookie</h1>

	<ul>
		<li><p>
				<b>网站名:</b>
				<%=new String(request.getParameter("name").getBytes("ISO-8859-1"), "utf-8")%><br>
			</p></li>
		<li><p>
				<b>网址:</b>
				<%=request.getParameter("url")%>
			</p></li>
	</ul>
</body>
</html>