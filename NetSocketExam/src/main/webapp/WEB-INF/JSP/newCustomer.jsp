<%@page import="com.pojo.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- 使用springnvc的form标签，可以更快速的开发出表单页面 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>新增用户</title>
<script type="text/javascript" charset="UTF-8" src="<%=request.getContextPath()%>/JS/style.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/style.css"></link>
</head>
<body>
	<center>
		<form action="insertCustomer" method="GET" name="customer">
			<table border="1">

				<tr>
					<td>first_name</td>
					<td><input type="text" name="first_name"></td>
				</tr>
				<tr>
					<td>last_name</td>
					<td><input type="text" name="last_name"></td>
				</tr>
				<tr>
					<td>email</td>
					<td><input type="text" name="email"></td>
				</tr>
				<tr>
					<td>address_id</td>
					<td><input type="text" name="address_id"></td>
				</tr>
				<tr align="center">
					<td colspan="2"><input type="submit" value="提交" onclick="return checkInput()"/>&nbsp;&nbsp;
						<input type="reset" value="重置" /></td>
				</tr>
			</table>
		</form>

	</center>
</body>
</html>