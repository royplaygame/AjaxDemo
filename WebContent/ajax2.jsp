<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.0.0.min.js"></script>
<script type="text/javascript">
	$(function() {
		// 绑定change事件
		$("#main").change(function() {
			var id = $("#main").val();
			// ajax 请求
			$.ajax({
				url : "/AjaxDemo/userServlet",
				type : "get",
				data : {
					type : "getCity",
					city : id
				},
				success : function(data, status) {
					var cityList = data.split(",");
					var displaySelected = document.getElementById("child");
					displaySelected.innerHTML = null;
					for (var i = 0; i < cityList.length; i++) {
						var op = document.createElement("option");
						op.innerHTML = cityList[i];
						displaySelected.appendChild(op);
					}
				}
			});

		});
	});
</script>
</head>
<body>
	<center>
		<div style="height: 300px"></div>
		<select name="main" id="main">
			<option value="1" selected="selected">中国</option>
			<option value="2">美国</option>
			<option value="3">日本</option>
		</select> <select name="child" id="child">
		</select>
	</center>
</body>
</html>