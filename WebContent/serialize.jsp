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

		$("form").submit(function() {
			alert($(this).serialize());
		});

	});
</script>
</head>
<body>
	<form action="javascript:void(0);">
		用户邮箱：<input type="text" name="email" id="email" /><br /> <br />
		用户名称：<input type="text" name="username" id="username" /> <br /> <br />
		用户密码：<input type="text" name="password" id="password" /><br /> <br />
		用户手机：<input type="text" name="mobile" id="mobile" /><br /> <br /> <input
			type="submit" value="登录" id="submit" />
	</form>

</body>
</html>