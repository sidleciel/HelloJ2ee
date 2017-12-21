<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>useBean 实例</title>
</head>
<body>

	<jsp:useBean id="date" class="java.util.Date" />
	<p>
		日期为：<%=date%>

		<br>
	<h1>get 和 set 属性实例</h1>
	<jsp:useBean id="students" class="com.sc.bean.StudentBean">
		<jsp:setProperty name="students" property="firstName" value="小强" />
		<jsp:setProperty name="students" property="lastName" value="王" />
		<jsp:setProperty name="students" property="age" value="10" />
	</jsp:useBean>
	<p>
		学生名字:
		<jsp:getProperty name="students" property="firstName" />
	</p>
	<p>
		学生姓氏:
		<jsp:getProperty name="students" property="lastName" />
	</p>
	<p>
		学生年龄:
		<jsp:getProperty name="students" property="age" />
	</p>

</body>
</html>