/**
 * 
 */
function logincheck(){
	var username = document.form.username.value;
	var password = document.form.password.value;
	if(username == ""){
		alert("请输入用户名");
		return false;
	}
	if(password == ""){
		alert("请输入密码");
		return false;
	}	
	return true;
}

function sure(order_id) {	
	if (confirm("确认要删除这条数据吗？")) {
		var request = new XMLHttpRequest();
		request.open("GET", "deleteCustomer?id="+order_id);
		request.send();	
		$("#tid").remove();
		return false;
	}else{
		
		return false;
	}
	
	return false;
}


function checkInput(){
	alert("123");
	if(document.customer.address_id.value < 0 || document.customer.address_id.value > 605 ){
		alert("请输入0-605之间的任意数字");
		return false;
	}
	return true;
}
