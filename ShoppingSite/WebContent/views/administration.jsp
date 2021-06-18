<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<p>Administrator</p>
	
	<form action ="../jp,co.aforce.servlets/administrationServlet" method = "post">
	
		<div class = admin>
			<div class = "">Administrator
				<input type = "submit" name = "buttonName" value ="List" id = "list"/>
				<input type = "submit" name = "buttonName" value ="Registration" id = "regist"/>
				<input type = "submit" name = "buttonName" value ="DeleteOrChange" id = "delteOrChange"/>
			</div>
		</div>
	
	<%-- 
	
	<button id = "itemList" onclick = "location.href = 'registration.jsp'">List of goods</button><br>
	<button id = "regist" onclick = "location.href = 'change.jsp'">Registration</button><br>
	<button id = "deleteOrChange" onclick = "location.href = 'delete.jsp'">Delete/Change</button>
	
	--%>
	
	</form>




</body>
</html>