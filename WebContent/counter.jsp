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
		//计数器
		Integer count = (Integer) application.getAttribute("count");
		if (count != null) {
			count = count + 1;
		} else {
			count = 1;
		}
		application.setAttribute("count", count);
	%>

	<%
		// 显示计数
		Integer counter = (Integer) application.getAttribute("count");
		out.println("您是第" + count + "访客！");
	%>
</body>
</html>