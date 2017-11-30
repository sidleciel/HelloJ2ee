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
	<h1>使用post方法读取数据</h1>
	<ul>
		<li>
			<p>
				<b>站点名：</b>
				<%
					String name = "";
					if (request.getParameter("name") != null)
						name = new String(request.getParameter("name").getBytes("ISO-8859-1"), "utf-8");
				%>
				<%=name%></p>
		</li>
		<li>
			<p>
				<%
					String url = "";
					if (request.getParameter("url") != null)
						url = request.getParameter("url");
				%>
				<b>网址：</b> <a href="<%=url%>"><%=url%></a>
			</p>
		</li>
	</ul>

	<h1>从复选框中读取数据</h1>
	<ul>
		<li><p>
				<b>Google 是否选中:</b>
				<%=request.getParameter("google")%>
			</p></li>
		<li><p>
				<b>菜鸟教程是否选中:</b>
				<%=request.getParameter("runoob")%>
			</p></li>
		<li><p>
				<b>淘宝是否选中:</b>
				<%=request.getParameter("taobao")%>
			</p></li>
	</ul>
	
	<br>
	<h1>读取所有表单参数</h1>
	<table width="100%" border="1" align="center">
	<tr bgcolor="#949494">
	<th>参数名</th><th>参数值</th>
	<%
		Enumeration paramNames = request.getParameterNames();
		
		while(paramNames.hasMoreElements()){
			String key = (String)paramNames.nextElement();
			String value = request.getParameter(key);
			
			out.print("<tr><td>" + key + "</td><td>" + value + "</td></tr>\n");
		}
	%>
	</table>
</body>
</html>