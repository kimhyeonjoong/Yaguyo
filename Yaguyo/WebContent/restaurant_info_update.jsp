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
			<article id="Login" class="active">
				<h2 class="major">음식점 정보수정페이지</h2>
				
				<!-- 1.JOIN버튼 클릭 시 JoinService.java로 ID,PW,NICKNAME,EMAIL,TEL을 전송하시오.  -->
				
				<form action="restaurant_UpdateService" method="post">
					<div class="field half">
						<label for="name">NANE</label> <input type="text" readonly="readonly" value="${sessionScope.res_name }" name="res_name" />
					</div>
					<div class="field half">
						<label for="pw">PW</label> <input type="password" name="res_pw" />
					</div>
					<div class="field half">
						<label for="tel">TEL</label> <input type="text" name="res_tel" />
					</div>
					<div class="field half">
						<label for="location">LOCATION</label> <input type="text" name="res_location" />
					</div>
					<div class="field half">
						<label for="type">TYPE</label> <input type="text" name="res_type" />
					</div>
					<div class="field half">
						<label for="notice">NOTICE</label> <input type="text" name="res_notice" />
					</div>

					<ul class="actions">
						<li><input type="submit" value="Update" class="special" /></li>
						<li><input type="button" value="Cancel" onclick="back()" /></li>
					</ul>
				</form>
			</article>
		</div>
	</div>
	


	<script type="text/javascript">
		function back(){
			location.href="restaurant_manage.jsp";
		}
	</script>

	<!-- Scripts -->
	<!-- 	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script> -->
	<!-- 	<script src="assets/js/main.js"></script> -->

</body>
</html>
