<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- <!DOCTYPE html> -->
<jsp:text>
	<![CDATA[<!DOCTYPE html
PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
"DTD/xhtml1-strict.dtd">]]>
</jsp:text>
<html>
<head>
<meta charset="utf-8">
<title>菜鸟教程(runoob.com)</title>
</head>
<body>

	<h2>include 动作实例</h2>
	<jsp:include page="date.jsp" flush="true" />
	<!-- flush:布尔属性，定义在包含资源前是否刷新缓存区。 -->

	<br>
	<h2>Jsp 使用 JavaBean 实例</h2>
	<jsp:useBean id="test" class="com.sc.bean.TestBean" />
	<jsp:setProperty property="message" name="test" value="菜鸟课程。。。" />
	<p>输出信息....</p>
	<jsp:getProperty name="test" property="message" />

	<!-- 	<br> -->
	<!-- 	<h2>forward 动作实例</h2> -->
	<%-- 	<jsp:forward page="date.jsp" /> --%>

	<br>
	<h2>jsp:text 动作实例</h2>
	<books> <book><jsp:text>  
    Welcome to JSP Programming
</jsp:text></book></books>

</body>
</html>