<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		if ("admin".equals(username) && "123456".equals(password)) {
			Cookie user = new Cookie("user", username.trim());
			user.setMaxAge(5 * 60);
			response.addCookie(user);
			response.sendRedirect("main.jsp");
		}else{
			response.sendRedirect("login.jsp");
		}
	%>
</body>
</html>