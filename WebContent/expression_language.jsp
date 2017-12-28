<%@ page import="java.io.*,java.util.*"%>
<%
	String title = "Accessing Request Param";
%>
<html>
<head>
<title>
	<%
		out.print(title);
	%>
</title>
</head>
<body>
	<p>${pageContext.request.queryString}</p>

	<center>
		<h1>
			<%
				out.print(title);
			%>
		</h1>
	</center>
	<div align="center">
		<p>${param["username"]}</p>
		<p>${header["user-agent"]}</p>
	</div>
</body>
</html>