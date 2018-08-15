<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.0.0.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#username").on('input', function(e) {
			var word = $("#username").val();
			// get ajax
			/* $.get("/AjaxDemo/userServlet",{type:"checkUserExist",word:word},
				function(data,status){
					$("#message").html(data);
				}
			); */

			// ajax
			$.ajax({
				url : "/AjaxDemo/userServlet",
				type : "get",
				data : {
					type : "checkUserExist",
					word : word
				},
				success : function(data, status) {
					$("#message").addClass("succtip");
					$("#message").html(data);
				}
			});
		});

		$("#email").on('input', function(e) {
			var email = $("#email").val();
			// Email验证
			$.get("/AjaxDemo/userServlet", {
				type : "checkEmail",
				email : email
			}, function(data, status) {
				var obj=eval('(' + data + ')');
				if (obj.flag) {
					$("#emailTips").addClass("failtip");
					$("#emailTips").html(obj.message);

				} else {
					$("#emailTips").addClass("succtip");
					$("#emailTips").html(obj.message);
				}
			});
		});
	});
</script>
<style type="text/css">
.succtip {
	color: red;
}

.failtip {
	color: green;
}
</style>
</head>
<body>
	<center>
		<H1>用户登录</H1>
		<form action="userServlet">
			用户邮箱：<input type="text" name="email" id="email" /><br /> <br />
			用户名称：<input type="text" name="username" id="username" /> <br /> <br />
			用户密码：<input type="text" name="password" id="password" /><br /> <br />
			<input type="submit" value="登录" />
		</form>
		<br /> <br /> <br /> <br />
		<h3>
			<span id="emailTips"></span> <br /> <span id="message"></span>
		</h3>
		
		<h2><a href="load.jsp">Loading......</a></h2>
		<h2><a href="serializeArray.jsp">serializeArray......</a></h2>
		<h2><a href="serialize.jsp">serialize......</a></h2>
		<h2><a href="ajax.jsp">ajax原生写法......</a></h2>
		<h2><a href="ajax2.jsp">ajax2联动写法......</a></h2>
	</center>
</body>
</html>