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
				<h2 class="major">Restaurant Login</h2>
				
				<!-- 1.JOIN버튼 클릭 시 JoinService.java로 ID,PW,NICKNAME,EMAIL,TEL을 전송하시오.  -->
				
				<form action="restaurant_LoginService" method="post">
					<div class="field half">
						<label for="name">Name</label> <input type="text" name="res_name" />
					</div>
					<div class="field half">
						<label for="pw">PW</label> <input type="text" name="res_pw"/>
					</div>

					<ul class="actions">
						<li><input type="submit" value="Login" class="special" /></li>
						<li><input type="BUTTON" value="CANCEL" class="special" onclick="history.go(-1)" /></li><br><br>
						<li><a href="restaurant_join.jsp">아직 회원이 아니세요?</a></li>
					</ul>
					
				</form>
			</article>
			
		</div>
	</div>
	


	
	<script type="text/javascript">
		function back(){
			location.href="main.jsp";
		}
	</script>

	<!-- Scripts -->
	<!-- 	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script> -->
	<!-- 	<script src="assets/js/main.js"></script> -->

</body>
</html>
