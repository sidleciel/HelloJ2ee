<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.io.*,java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>

	<h1>get</h1>
	<form id="get" action="form_get.jsp" method="get">
		站点名：<input type="text" name="name" value="test"><br /> 网址：<input
			type="text" name="url" value="http://www.baidu.com"><br /> <input
			type="submit" value="提交">
	</form>

	<br>
	<h1>post</h1>
	<form id="post" action="form_post.jsp" method="post" target="_blank">
		站点名：<input type="text" name="name" value="test"><br /> 网址：<input
			type="text" name="url" value="http://www.baidu.com"><br /> <input
			type="submit" value="提交">
	</form>

	<br>
	<h1>checkbox post</h1>
	<form id="post" action="form_post.jsp" method="post" target="_blank">
		<input type="checkbox" name="google" checked="checked" />google <input
			type="checkbox" name="runoob" />菜鸟教程 <input type="checkbox"
			name="taobao" checked="checked" />淘宝 <input type="submit"
			value="选择网站">
	</form>
</body>
</html>