<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
	<title>主页</title>
<style  type="text/css" >

#header{
	position: fixed;
}
#login{
	position: relative;
}
</style>	
</head>
<link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/login.css"></link>
<body>
<script type="text/javascript" charset="UTF-8" src="<%=request.getContextPath()%>/JS/style.js"></script>

<div align="center"  >
	<div align="center" id ="center">
		<%session.setAttribute("customer", "customer"); %>
		<div id="header">10892  张鹏飞</div><br><br>
		<div id="login" style="text-align: center;">
		<div style="background-color: #ffffff; width :300px;position:relative;"><h3>电影租赁管理系统</h3></div>

			<div align="center">
			
			<form action="login" method="post" name="form">
			<table>
				<tr>
					<td>用户名:</td>
					<td><input type="text" name="username" id="username"/></td>
				</tr>
				<tr>
					<td><br>密        码:</td>
					<td><br><input type="password" name="password" id="password"/></td>
				</tr>
				<tr align="center">
					<td colspan="2"> 
					<br><br>
						<input type="submit" class="button"  value="登录" onclick="return logincheck()"/>
					</td>
				</tr>
			</table>
			</form>
			</div>
		</div>
	</div>
</div>
</body>
</html>
