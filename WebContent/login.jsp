<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<%
	Cookie[] cookies = request.getCookies();
	if (cookies != null) {
		for (int i = 0; i < cookies.length; i++) {
			out.println(cookies[i].getValue());
			if ("admin".equals(cookies[i].getValue())) {
				response.sendRedirect("main.jsp");
			}
		}
	}
%>
<body>
	<center>
		<h1>用户登录</h1>
		<form action="doLogin.jsp" method="get">
			用户名称：<input type="text" name="username"> <br /> <br />
			用户密码：<input type="password" name="password"> <br /> <br />
			<input type="submit" value="登录">
		</form>
	</center>
</body>
</html>