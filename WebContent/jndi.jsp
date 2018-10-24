<%@page import="com.alibaba.druid.pool.DruidDataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="javax.naming.Context"%>
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
		//javax.naming.Context提供了查找JNDI Resource的接口
		Context ctx = new InitialContext();
		//java:comp/env/为前缀
		String testCtx = (String) ctx.lookup("java:comp/env/tjndi");
		out.println("JNDI:====>" + testCtx);
		
		
		DruidDataSource ds=(DruidDataSource)ctx.lookup("java:comp/env/jdbc/root");
		out.println("<br/>");
		out.println(ds.getUsername()+"<br/>");
		out.println(ds.getPassword()+"<br/>");
		out.println(ds.getUrl()+"<br/>");
		out.println(ds.getInitialSize()+"<br/>");
		out.println(ds.getMaxActive()+"<br/>");
		
		String charSet=(String)ctx.lookup("java:comp/env/charSet");
		out.println(charSet);
	%>
</body>
</html>