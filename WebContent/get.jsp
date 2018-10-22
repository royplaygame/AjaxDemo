<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<center>
	<h1>用户信息</h1>
		<form action="result.jsp" method="get">
		用户名称：<input type="text" name="username"> <br/><br/>
		用户密码：<input type="password" name="password"> <br/><br/>
		用户来源：<input type="checkbox" name="chinnel" value="新闻"> 新闻 
		<input type="checkbox" name="chinnel"  value="网络"> 网络
		<input type="checkbox" name="chinnel"  value="报刊"> 报刊
		<input type="checkbox" name="chinnel"  value="朋友推荐"> 朋友推荐
		<input type="checkbox" name="chinnel"  value="电视"> 电视
		<input type="checkbox" name="chinnel"  value="手机"> 手机<br/><br/>
		<input type="submit" value="注册">
		</form>
		
		<a href="result.jsp?book='平凡的世界'">result</a>
	</center>
</body>
</html>