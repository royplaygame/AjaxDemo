<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>MyBox</title>
</head>
<body>
	<input type="text" onkeypress="change(this.value)">
	<h1 id="myName"></h1>
	<script type="text/javascript">
		var xmlrequest;
		function createXMLHttpRequest() {
			xmlrequest = new XMLHttpRequest();
		}

		function change(ch) {
			createXMLHttpRequest();
			var url = "userServlet?type=tips&ch=" + ch;
			xmlrequest.onreadystatechange = proResponse;
			xmlrequest.open("get", url, true);
			xmlrequest.send(null);
		}

		function proResponse() {
			var myName = document.getElementById("myName");
			myName.innerHTML = xmlrequest.responseText;
		}
	</script>
</body>
</html>