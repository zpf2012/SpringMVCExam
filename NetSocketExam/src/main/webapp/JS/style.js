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
	if(document.getElementsByName("store_id")<=0 || document.getElementsByName("store_id")>2){
		alert("Store_id  should be 1 or 2!!!");
		return false;
	}
	if(document.getElementsByName("addredd_id")<0 || document.getElementsByName("addredd_id")>605){
		alert("addredd_id is not exist!!!");
		return false;
	}
	return true;
}
