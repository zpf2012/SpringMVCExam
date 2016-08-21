<%@page import="java.util.List"%>
<%@page import="com.pojo.Customer"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>所有客户信息</title>

<script type="text/javascript">
	function exit(){
		if (confirm("确认要退出系统吗？")) {
			var request = new XMLHttpRequest();
			request.open("GET", "index.jsp");
			request.send();	
			location.reload();
			return false;
		}else{
			
			return false;
		}
		
		return true;
	}
</script>
</head>
<%
	List<Customer> customers = (List<Customer>) request.getAttribute("customers");
%>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/CSS/style.css"></link>

<script type="text/javascript"
	src="<%=request.getContextPath()%>/JS/style.js"></script>
<body>
	<center>
		<div style="width: 900px; background-color: #f0f0f1;">
			<a href="newCustomer">新建</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<button value="退出系统" onclick="return exit()">退出系统</button>
			<table border="1px">
				<tr align="center">
					<th width="15%" colspan="2">操作</th>
					<th width="10%">First_name</th>
					<th width="10%">Last_name</th>
					<th width="30%">Address</th>
					<th width="5%">CustomerId</th>
					<th width="30%">Last_update</th>

				</tr>
				<%
					for (Customer customer : customers) {
				%>
				<tr id="<%=customer.getCustomer_id()%>">
					<td><a href="updateCustomer?id=<%=customer.getCustomer_id()%>">编辑</a></td>
					<td><a href="customerInfo" onclick="return sure(<%=customer.getCustomer_id()%>)">删除</a></td>
					<td><%=customer.getFirst_name()%></td>
					<td><%=customer.getLast_name()%></td>
					<td><%=customer.getAddress().getAddress()%></td>
					<td><%=customer.getCustomer_id()%></td>
					<td><%=customer.getLast_update()%></td>
				</tr>
				<%
					}
				%>
<!-- 				<tr align="center">
					<td colspan="7">
						<a href="firstPage">第一页</a>&nbsp;&nbsp; 
						<a href="lastPage">上一页</a>&nbsp;&nbsp;
						<a href="nextPage">下一页</a>&nbsp;&nbsp;
						<a href="endPage">尾页</a>&nbsp;&nbsp;
					</td>
				</tr> -->

			</table>

		</div>
	</center>
</body>
</html>