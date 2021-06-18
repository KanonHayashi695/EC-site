<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sound Home</title>
</head>
<body>

	<div class="form" align="center">

		<span class="emsg">${memberBean.emsg}</span> <span class="commsg">${memberBean.commsg}</span>

		<div class="signin cf" align="center">
			<div class="formtitle">Registration</div>

			<h4>新規登録する商品の情報を入力して下さい。</h4>

			<form action="../jp.co.aforce.servlet/registServlet" method="post" enctype ="multipart/form-data">

				<table border="1">
					<tbody>
						<tr>
							<td>商品名</td>
							<td><input type="text" name="itemName"></td>
						</tr>
						<tr>
							<td>値段</td>
							<td><input type="text" name="price"></td>
						</tr>
						<tr>
							<td>説明</td>
							<td><textarea id = discript rows = "10" cols = "50"></textarea></td>
						</tr>
						<tr>
							<td>写真</td>
							<td><input type = "file" name = "picture"></input></td>
						</tr>
						<tr>
							<td>カテゴリid</td>
							<td><select name = "categoryId">
									<option value = "0001">ヘッドフォン</option>
									<option value = "0002">イヤホン</option>
									<option value = "0003">マイク</option>
									<option value = "0004">スピーカー</option>
								</select>
							</td>
						</tr>

					</tbody>
				</table>

				<input type="submit" name="buttonName" value="戻る" /> <input
					type="submit" name="buttonName" value="登録" id="regist"
					onclick="return showConfirmDialog('登録')" />

			</form>

		</div>
	</div>



</body>
</html>