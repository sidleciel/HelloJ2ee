<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml"%>
<html>
<head>
<title>STL x:parse Tags</title>
</head>
<body>

	<h3>Books Info:</h3>
	<c:import url="books.xml" var="bookInfo"></c:import>

	<x:parse xml="${bookInfo}" var="output" />
	
	<b>The title of the first book is</b>:
	<x:out select="$output/books/book[1]/name" />

	<br>
	<b>The price of the second book</b>:
	<x:out select="$output/books/book[2]/price" />
 
</body>
</html>