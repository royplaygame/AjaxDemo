<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>原生AJAX</title>
</head>
<body>
	<center>
		<h1>这是一个随机点名工具</h1>
		<h1 id="name" onclick="showName()">点击切换名称</h1>
	</center>

	<script type="text/javascript">
		//定义一个XMLHttpRequest
		var xmlrequest;
		//定义XMLHttpRequest对象方法
		function createXMLHttpRequest() {
			xmlrequest = new XMLHttpRequest();
		}

		//事件处理函数，当下拉列表选择改变时，触发该事件
		function showName() {
			//初始化XMLHttpRequest对象方法
			createXMLHttpRequest();
			var url = "userServlet?type=getUserName";
			xmlrequest.onreadystatechange = proResponse;
			//打开与服务器响应地址的连接
			xmlrequest.open("get", url, true);
			xmlrequest.send(null);
		}

		//定义响应处理的回调函数
		function proResponse() {
			if (xmlrequest.readyState == 4 && xmlrequest.status == 200) {
				var myName = document.getElementById("name");
				myName.innerHTML = xmlrequest.responseText;
			}
		}
	</script>
</body>
</html>