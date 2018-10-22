<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../js/jquery-3.0.0.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#p1").addClass("hcolor");
		$("#title").addClass("pcolor");
		$("#title").removeClass("pcolor");
		//alert($("p").css("background-color"));
		$("p").css("background-color", "red");
		$("p").css("font-size", "25px");
		//alert($("p").css("background-color"));
		$("p").hide();
		$("h1").hide();

		$("p").show();
		$("h1").show();

		$("#btn1").click(function() {
			$("span").hide();
		});
		$("#btn2").click(function() {
			$("span").show();
		});

		$("p").next().hide();
		//$("p").prev().hide();
	});
	$(function() {
		//方式一new：
		var obj = new Object();
		//alert(obj)
		var array = new Array(1, 2, 3, 4, 5);
		alert(array)

		var date = new Date();
		alert(date);
		// 方式二直接量：
		var book = {
			x : 10,
			y : 6
		};
		//alert(book);
		alert(book.x)

		// 方式三通过原型继承创建：
		var stu = Object.create({
			name : '张三',
			id : 1001,
			sex : '男'
		});
		//alert(stu.name);
		//alert(stu.id);
	});
</script>
<style type="text/css">
.pcolor {
	color: red;
}

.hcolor {
	color: green;
}

p {
	background-color: purple;
	font-size: 20px;
}
</style>
</head>
<body>
	<center>
		<h1 id="title">JQuery Study</h1>
		<p id="p1">this is my fist jsp</p>
		<span>button可以控制我是否显示哟，点一下试试吧！</span> <br />
		<button id="btn1">点击我，隐藏</button>
		<button id="btn2">点击我，显示</button>
	</center>
</body>
</html>