<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<html>
<head>
<script type="text/javascript">
	function checking(){
		
		if(document.resWrite.res_name.value == ""){
			alert("��ȣ���� �Է� �ϼ���.");
			document.resWrite.res_name.focus();
			return false;
		}else if(document.resWrite.res_pw.value == ""){
			alert("��й�ȣ�� �Է� �ϼ���.");
			document.resWrite.res_pw.focus();
			return false;
		}else if(document.resWrite.res_pw.value != document.resWrite.res_pw_re.value){
			alert("��й�ȣ�� �ٸ��ϴ� ��Ȯ�� �Է��ϼ���.");
			document.resWrite.res_pw_re.focus();
			return false;
		}else if(document.resWrite.res_tel.value == ""){
			alert("��ȭ��ȣ�� �Է��ϼ���.");
			document.resWrite.res_tel.focus();
			return false;
		}else if(document.resWrite.res_location.value == ""){
			alert("����ġ�� �Է� ���ּ���.");
			document.resWrite.res_location.focus();
			return false;
		}else if(document.resWrite.res_img.value == ""){
			alert("��ǥ �̹����� ÷�� ���ּ���.");
			document.resWrite.res_img.focus();
			return false;
		}else if(document.resWrite.res_notice.value == ""){
			alert("��ü ������ �ۼ� ���ּ���.");
			document.resWrite.res_notice.focus();
			return false;
		}else{
			alert("����� �Ϸ� �Ǿ����ϴ�! ���Խ��� �ɻ�� 2�� ���� �ҿ�˴ϴ�." );
			return true;
		}
	}
</script>
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
				<h2 class="major">Join</h2>
				
				
				<form action="restaurant_JoinService" name="resWrite" onsubmit="return checking()" method="post" enctype="multipart/form-data">
					<div class="field half">
						<label for="name">NANE</label> <input type="text" name="res_name"/>
						<input type="button" name="btn" value="�ߺ�Ȯ��" onclick="nameCheck()">
						<span id="overView" value="&nbsp;"></span>
					</div>
					<div class="field half">
						<label for="pw">PW</label> <input type="text" name="res_pw"/>
					</div>
					<div class="field half">
						<label for="pw_re">PW_reconfirm</label> <input type="text" name="res_pw_re"/>
					</div>
					<div class="field half">
						<label for="pw">TYPE</label>
						<select name="res_type">
							<option value="chicken">chicken</option>
							<option value="etc">etc</option>
							<option value="drinking">drinking</option>
						</select>
					</div>
					<div class="field half">
						<label for="tel">TEL</label> <input type="text" name="res_tel"/>
					</div>
					<div class="field half">
						<label for="location">LOCATION</label> <input type="text" name="res_location" />
					</div>
					<div class="field half">
						<label for="img">IMG</label> <input type="file" name="res_img" />
					</div>
					<div class="field half">
						<label for="notice">NOTICE</label> <input type="text" name="res_notice" />
					</div>

					<ul class="actions">
						<li><input type="submit" value="Join" class="special" /></li>
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
		
	
		function nameCheck(){
			/* cnt = 1; */
			var sname = document.resWrite.res_name
			if(sname.value == ""){
				alert("�Էµ� ��ȣ���� �����ϴ�.");
			}else{
				window.open("restaurant_compare.jsp?res_name=" + sname.value,"",'width=400px; height=150px');
			}
			
		}
		
	</script>

	<!-- Scripts -->
	<!-- 	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/skel.min.js"></script>
	<script src="assets/js/util.js"></script> -->
	<!-- 	<script src="assets/js/main.js"></script> -->

</body>
</html>
