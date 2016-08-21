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

<div align="center" >
	<div id ="center" align="center">
		<%session.setAttribute("customer", "customer"); %>
		<div id="header">10892  张鹏飞</div><br><br>
		<div id="login" align="center">
		<div style="heitht: 15px; width: auto; background-color: #ffffff; margin-top: 0px; top: 0px;">电影租赁管理系统</div>
			<br><br>
			<div >
			
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
						<input type="submit" class="button"  value="登录" onclick="return logincheck()"/>&nbsp;&nbsp;&nbsp;
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
