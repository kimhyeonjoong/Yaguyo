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
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
</head>
<body class="is-article-visible">

	<div id="wrapper">

		<div id="main">
			<article id="Login" class="active">
				<h2 class="major">Admin Login</h2>
				
				<form action="admin_LoginService">
					<div class="field half">
						<label for="id">ID</label> <input type="text" name="admin_id"/>
					</div>
					<div class="field half">
						<label for="pw">PW</label> <input type="text" name="admin_pw" />
					</div>

					<ul class="actions">
						<li><input type="submit" value="login" class="special" onclick="black()" /></li>
					<li><input type="BUTTON" value="CANCEL" class="special" onclick="history.go(-1)" /></li>
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

</body>
</html>
