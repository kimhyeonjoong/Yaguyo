<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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
				<h2 class="major">관리자 음식점 추가/제거</h2>
				
				<%
					String url = "jdbc:oracle:thin:@localhost:1521:xe";
					String db_id = "lee";
					String db_pw = "1234";
					
					String sql;
					PreparedStatement pst;
					ResultSet rs;
					
					Class.forName("oracle.jdbc.driver.OracleDriver");
			        Connection conn = DriverManager.getConnection(url, db_id, db_pw);
			   
				%>
				
				
				<form>
					<div>
						<h3>가입승인 대기중</h3>
						<table border="1">
							<tr>
								<td>이름</td>
								<td>연락처</td>
								<td>위치</td>
								<td>비고</td>
							</tr>
							
							<%
								sql = "select * from yaguyo_restaurant where res_qual = 0";
						         
								pst = conn.prepareStatement(sql);
						         
								rs = pst.executeQuery();
						         
								while(rs.next()){
									
							%>
								<tr>
									<td><%=rs.getString(3) %></td>
									<td><%=rs.getString(5) %></td>
									<td><%=rs.getString(6) %></td>
									<td><a href="admin_ApproveService?num=<%=rs.getInt(1) %>">추가</a></td>
								</tr>
						      
						    <%
								}
							%>
							
							
						</table>
					</div>
					
					<div>
						<h3>등록된 가게목록</h3>
						<table border="1">
							<tr>
								<td>이름</td>
								<td>연락처</td>
								<td>위치</td>
								<td>비고</td>
							</tr>
							
							<%
								sql = "select * from yaguyo_restaurant where res_qual = 1";
						         
								pst = conn.prepareStatement(sql);
						         
								rs = pst.executeQuery();
						         
								while(rs.next()){
									
							%>
								<tr>
									<td><%=rs.getString(3) %></td>
									<td><%=rs.getString(5) %></td>
									<td><%=rs.getString(6) %></td>
									<td><a href="admin_Withdraw?num=<%=rs.getInt(1) %>">삭제</a></td>
								</tr>
						      
						    <%
								}
							%>
						
						</table>
					</div>

					<ul class="actions">
						<li><input type="button" value="로그아웃하기" onclick="back()"/></li>
					</ul>
					
				</form>
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
