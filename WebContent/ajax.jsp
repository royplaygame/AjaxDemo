<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
</head>
<body>
<center>
	<div style="height: 300px"></div>
	<select name="main" id="main" onchange="change(this.value);">
		<option value="1" selected="selected">中国</option>
		<option value="2">美国</option>
		<option value="3">日本</option>
	</select>
	<select name="child" id="child">

	</select>
</center>	
	<script type="text/javascript">
		//定义一个XMLHttpRequest
		var xmlrequest;
		//初始化XMLHttpRequest对象方法
		function createXMLHttpRequest() {
			if (window.XMLHttpRequest) {
				xmlrequest = new XMLHttpRequest();
			} else if (window.ActiveXObject) {
				try {
					xmlrequest = new ActiveXObject("Msxml2.XMLHTTP");
				} catch (e) {
					try {
						xmlrequest = new ActiveXObject("Mircrosoft.XMLHTTP");
					} catch (e) {
					}
				}
			}
		}

		//事件处理函数，当下拉列表选择改变时，触发该事件
		function change(id) {
			//初始化XMLHttpRequest对象
			createXMLHttpRequest();
			//设置请求响应的URL
			var url = "userServlet?type=getCity&city=" + id;
			//设置响应的回调函数
			xmlrequest.onreadystatechange = proResponse;
			//打开服务器响应地址的连接
			xmlrequest.open("get", url, true);
			//发送请求
			xmlrequest.send(null);
		}

		//定义响应处理的回调函数
		function proResponse() {
			if (xmlrequest.readyState == 4 && xmlrequest.status == 200) {
				var cityList = xmlrequest.responseText.split(",");
				var displaySelected = document.getElementById("child");
				displaySelected.innerHTML = null;
				for (var i = 0; i < cityList.length; i++) {
					var op = document.createElement("option");
					op.innerHTML = cityList[i];
					displaySelected.appendChild(op);
				}
			} 
		}
	</script>
</body>
</html>