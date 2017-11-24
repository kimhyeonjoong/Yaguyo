<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/login.css" />
<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
<style type="text/css">
#center{
	margin: 0 auto;
	text-align: center;
}
</style>
</head>

<body class="is-article-visible">
<!-- private String menu_res_name;
	private String menu_name;
	private int menu_price;
	private String menu_img; -->
	
		<!-- Wrapper -->
		<div id="wrapper">
			<!-- Main -->
			<div id="main">
				<!-- Login -->
				<article id="Login" class="active">
				<h2 class="major">메뉴 추가하기</h2>
				
	
	<form action="restaurant_Menu_UpdateService" method="post" enctype="multipart/form-data" name="frm">
		<fieldset>
		<table border='0'>
			<tr>
				<th>음식 이름</th>
				<td><input type="text" name="menu_name"></td>
			</tr>
			<tr>
				<th>가격</th>
				<td><input type="text" name="menu_price"></td>
			</tr>
			<tr>
				<th>사진</th>
				<td><input type="file" name="menu_img"></td>
			</tr>
		</table>
		
		<br>
		<div id="center"><input type="submit" value="등록" ></div>
		</fieldset>
	</form>	
	
</body>
</html>