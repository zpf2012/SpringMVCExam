<%@page import="com.pojo.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>更新用户</title>
<% Customer customer = (Customer)request.getAttribute("customer"); %>
<script type="text/javascript">
	function check(){
		if(document.getElementsByName("store_id")<=0 || document.getElementsByName("store_id")>2){
			alert("Store_id  should be 1 or 2!!!");
		}
		if(document.getElementsByName("addredd_id")<0 || document.getElementsByName("addredd_id")>605){
			alert("address_id is not exist!!!");
		}
	}
</script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/CSS/style.css"></link>
</head>
<body>
	<center>
		<form action="updateCustomer2" method="GET" onsubmit="check()">
			<input type="hidden" name="customer_id" value="<%=customer.getCustomer_id()%>"/>
			<table border="1" id="tb" align="center">
				<tr>
					<td>first_name</td>
					<td><input type="text" name="first_name" value="<%=customer.getFirst_name()%>"></td>
				</tr>
				<tr>
					<td>last_name</td>
					<td><input type="text" name="last_name" value="<%=customer.getLast_name()%>"></td>
				</tr>
				<tr>
					<td>email</td>
					<td><input type="text" name="email" value="<%=customer.getEmail()%>"></td>
				</tr>
				<tr>
					<td>address_id</td>
					<td><input type="text" name="address_id" value="<%=customer.getAddress_id()%>"><span style="color: red;">*请输入1-605</span></td>
				</tr>
				<tr align="center">
					<td colspan="2"><input type="submit" value="提交" />&nbsp;&nbsp;
						<input type="reset" value="重置" /></td>
				</tr>
			</table>
		</form>
	</center>
</body>
</html>