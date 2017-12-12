<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*, javax.servlet.*,java.text.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>显示当前时间与日期</title>
</head>
<body>
	<h1>显示当前时间与日期</h1>

	<%
		Date date = new Date();
		out.print("<h2 align=\"center\">" + date.toString() + "</h2>");
	%>

	<h1>显示当前时间与日期</h1>

	<%
		Date dNow = new Date();
		SimpleDateFormat ft = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		out.print("<h2 align=\"center\">" + ft.format(dNow) + "</h2>");
	%>

	<h2>SimpleDateFormat格式码</h2>
	<p>要指定模式字符串，需要使用下表列出的格式码：</p>
	<table class="reference">
		<tbody>
			<tr>
				<th><strong>字符</strong></th>
				<th><strong>描述</strong></th>
				<th><strong>示例</strong></th>
			</tr>
			<tr>
				<td>G</td>
				<td>时代标识符</td>
				<td>AD</td>
			</tr>
			<tr>
				<td>y</td>
				<td>4位数年份</td>
				<td>2001</td>
			</tr>
			<tr>
				<td>M</td>
				<td>月</td>
				<td>July or 07</td>
			</tr>
			<tr>
				<td>d</td>
				<td>日</td>
				<td>10</td>
			</tr>
			<tr>
				<td>h</td>
				<td>12小时制， A.M./P.M. (1~12)</td>
				<td>12</td>
			</tr>
			<tr>
				<td>H</td>
				<td>24小时制</td>
				<td>22</td>
			</tr>
			<tr>
				<td>m</td>
				<td>分钟</td>
				<td>30</td>
			</tr>
			<tr>
				<td>s</td>
				<td>秒</td>
				<td>55</td>
			</tr>
			<tr>
				<td>S</td>
				<td>毫秒</td>
				<td>234</td>
			</tr>
			<tr>
				<td>E</td>
				<td>星期</td>
				<td>Tuesday</td>
			</tr>
			<tr>
				<td>D</td>
				<td>一年中的某天</td>
				<td>360</td>
			</tr>
			<tr>
				<td>F</td>
				<td>一个月中某星期的某天</td>
				<td>2 (second Wed. in July)</td>
			</tr>
			<tr>
				<td>w</td>
				<td>一年中的某星期</td>
				<td>40</td>
			</tr>
			<tr>
				<td>W</td>
				<td>一个月中的某星期</td>
				<td>1</td>
			</tr>
			<tr>
				<td>a</td>
				<td>A.M./P.M. 标记</td>
				<td>PM</td>
			</tr>
			<tr>
				<td>k</td>
				<td>一天中的某个小时 (1~24)</td>
				<td>24</td>
			</tr>
			<tr>
				<td>K</td>
				<td>一天中的某个小时，A.M./P.M. (0~11)</td>
				<td>10</td>
			</tr>
			<tr>
				<td>z</td>
				<td>时区</td>
				<td>Eastern Standard Time</td>
			</tr>
			<tr>
				<td>'</td>
				<td>文本分隔</td>
				<td>Delimiter</td>
			</tr>
			<tr>
				<td>"</td>
				<td>单引号</td>
				<td>`</td>
			</tr>
		</tbody>
	</table>
</body>
</html>