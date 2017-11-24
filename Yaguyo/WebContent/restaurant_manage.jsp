<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Dimension by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/login.css" />
<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
</head>
<body class="is-article-visible">

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Main -->
		<div id="main">
			<!-- Login -->
			<article id="Login" class="active" >
				<h2 class="major">음식점 정보수정페이지</h2>
				
				<!-- 1.JOIN버튼 클릭 시 JoinService.java로 ID,PW,NICKNAME,EMAIL,TEL을 전송하시오.  -->
				
				<!-- 	<ul class="actions">
						<li><form action="restaurant_info_update.jsp"><input type="submit" value="Info Update" class="special" /></form></li>
					</ul>
					<ul class="actions">
						<li><form action="restaurant_menu_insert.jsp"><input type="submit" value="MENU Update" class="special" /></form></li>
					</ul>
					<ul class="actions">
						<li><form action="order_list.jsp"><input type="submit" value="ORDER List" class="special" /></form></li>
					</ul> -->
					
					<table style="border-collapse:unset">
						<tr>
							<td><form action="restaurant_info_update.jsp"><input  type="submit" value="기본정보 수정" class="special" style="height:5rem; width:10rem"/></form></td>
							<td><form action="restaurant_menu_insert.jsp"><input type="submit" value="메뉴 추가" class="special" style="height:5rem; width:10rem"/></form></td>
							<td><form action="order_list2.jsp"><input type="submit" value="주문 목록" class="special"style="height:5rem; width:10rem" /></form></td>
						</tr>
					</table>
			</article>
		</div>
	</div>
	


	<script type="text/javascript">
		function back(){
			location.href="admin_login.jsp";
		}
	</script>

	<!-- Scripts -->
	<!-- 	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script> -->
	<!-- 	<script src="assets/js/main.js"></script> -->

</body>
</html>
