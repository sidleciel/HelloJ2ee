<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<html>
<head>
<title>Hello World</title>
</head>
<body>
	菜鸟教程（runoob.com）
	<br /> Hello World!
	<br />
	<%
		out.println("Your IP address is " + request.getRemoteAddr());
	%>
	<br>
	<p>
		声明<br>
		<%!int i = 1;%>
		<%!int a = 10, b, c;%>
		<%-- <%! Circle a = new Circle(2.0); %> --%>
		<%=i + a%>
	</p>

	<p>
		表达式<br> 今天的日期是：<%=(new java.util.Date()).toLocaleString()%>
	<p>
		注释<br>
		<%-- 注释 --%>
		JSP注释，注释内容不会被发送至浏览器甚至不会被编译<br>
		<!-- 注释 -->
		HTML注释，通过浏览器查看网页源代码时可以看见注释内容
		<%-- <\%	代表静态 <%常量 --%>
		<!-- %\>	代表静态 %> 常量 -->
		<!-- \'	在属性中使用的单引号 -->
		<!-- \"	在属性中使用的双引号 -->

	</p>

	<%!int day = 3;%>
	<h4>IF...ELSE 实例</h4>
	<%
		if (day == 1 | day == 7) {
	%>
	<p>今天是周末</p>
	<%
		} else {
	%>
	<p>今天不是周末</p>
	<%
		}
	%>

	<h3>SWITCH...CASE 实例</h3>
	<%
		switch (day) {
		case 0:
			out.println("星期天");
			break;
		case 1:
			out.println("星期一");
			break;
		case 2:
			out.println("星期二");
			break;
		case 3:
			out.println("星期三");
			break;
		case 4:
			out.println("星期四");
			break;
		case 5:
			out.println("星期五");
			break;
		default:
			out.println("星期六");
		}
	%>


	<h3>For 循环实例</h3>
	<%!int fontSize;%>
	<%
		for (fontSize = 1; fontSize <= 3; fontSize++) {
	%>
	<font color="green" size="<%=fontSize%>"> 菜鸟教程 </font>
	<br />
	<%
		}
	%>


	<h3>While 循环实例</h3>
	<%
		int fontSize = 0;
	%>
	<%
		while (fontSize <= 3) {
	%>
	<font color="green" size="<%=fontSize%>"> 菜鸟教程 </font>
	<br />
	<%
		fontSize++;
	%>
	<%
		}
	%>
</body>
</html>