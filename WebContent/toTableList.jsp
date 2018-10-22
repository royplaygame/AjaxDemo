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

		$("#showTable").click(function() {
			$.ajax({
				url : "/AjaxDemo/userServlet",
				type : "post",
				data : {
					type : "toList"
				},
				success : function(data, status) {
					var displayTable = document.getElementById("stock");
					var obj = eval('(' + data + ')');
					displayTable.innerHTML = null;
					for (var i = 0; i < obj.length; i++) {
						var tr = document.createElement("tr");

						var td = document.createElement("td");
						td.innerHTML = obj[i].plan_list;
						tr.appendChild(td);

						var td = document.createElement("td");
						td.innerHTML = obj[i].rent;
						tr.appendChild(td);

						var td = document.createElement("td");
						td.innerHTML = obj[i].fact_rent;
						tr.appendChild(td);

						var td = document.createElement("td");
						td.innerHTML = obj[i].status;
						tr.appendChild(td);

						displayTable.appendChild(tr);
					}
				}
			});
		});

	});
</script>
</head>
<body>
	<center>
		<a id="showTable" href="javascript:void(0);">显示Table</a>
		<table border="1" cellpadding="10" cellspacing="0" width="80%">
			<tr>
				<td>plan_list</td>
				<td>rent</td>
				<td>fact_rent</td>
				<td>status</td>
			</tr>
			<tbody id="stock">

			</tbody>
		</table>
	</center>
</body>
</html>