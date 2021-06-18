<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete</title>
</head>
<body>

	<div class="form" align="center">

		<span class="errorMsg">${itemBean.errorMsg}</span> <span class="completeMsg">${itemBean.completeMsg}</span>

		<div class="signin cf" align="center">
			<div class="formtitle">Delete</div>

			<form action="../jp.co.aforce.servlets/deleteServlet" method="post">

				<p>
					id
					<input type="text" name="id"
						value="${itemBean.id}">
					<input type="submit" name="buttonName" value="表示" />
				</p>

				<table border="1">
					<tbody>
						<tr>
							<td>名前</td>
							<td><input type="text" name="name"
								value="${memberBean.name}" disabled></td>
						</tr>
						<tr>
							<td>年齢</td>
							<td><input type="text" name="age" value="${memberBean.age}" disabled></td>
						</tr>
						<tr>
							
						</tr>


					</tbody>
				</table>

				<input type="submit" name="buttonName" value="戻る" /> <input
					type="submit" name="buttonName" value="削除" id="regist"
					onclick="return showConfirmDialog('削除')" />

			</form>

		</div>
	</div>


</body>
</html>