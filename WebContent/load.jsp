<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.0.0.min.js"></script>
<script type="text/javascript">
	$(function(){
		
		$("#show").load("/AjaxDemo/userServlet",{
			type : "loadAjax"
		},function(responseTxt,statusTxt,xhr){
		    if(statusTxt=="success"){
		      alert("外部内容加载成功!");
		      alert(responseTxt);
		      alert(xhr);
		    }
		    if(statusTxt=="error"){
		      alert("Error: "+xhr.status+": "+xhr.statusText);
		      alert(responseTxt);
		      alert(xhr);
		    }
		  });
		
	});
</script>
</head>
<body>
	<h3 id="show"></h3>
</body>
</html>