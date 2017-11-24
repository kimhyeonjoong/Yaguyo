<%@page import="com.model.orderDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.WebDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
	
		
<!DOCTYPE HTML>
<html>
<head>

<title>Dimension by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no"/>
	
	<meta http-equiv="refresh" content="5;url='http://localhost:8081/Yaguyo/order_list2.jsp'">
	
	
<link rel="stylesheet" href="assets/css/login.css" />
<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
<noscript>
	<link rel="stylesheet" href="assets/css/noscript.css" />
</noscript>
</head>
<body class="is-article-visible">

	<!-- Wrapper -->
	<div id="wrapper">

					<%
						//세션값가지고 와서 뿌려주기
						
						WebDAO dao = new WebDAO();
						ArrayList<orderDTO> AllList = dao.orderAllList((String)session.getAttribute("res_name"));//임시 DB저장
						pageContext.setAttribute("AllList", AllList);
						
					%>
		<!-- Main -->
		<div id="main">
			<!-- Login -->
				<h2 class="major">주문목록</h2>
					<table>
											<thead>
												<tr>
													<th>주문시간</th>
													<th>좌석번호</th>
													<th>연락처</th>
													<th>메뉴이름</th>
													<th>수량</th>
													<th>가격</th>
													<th>기타</th>
													<th>배달</th>
												</tr>
											</thead>
											<tbody>
											<c:forEach var="item" items="${pageScope.AllList }">
												<c:if test="${item.order_deli == 0 }">
												<tr>
													<td class="table_td">${item.order_time }</td>
													<td class="table_td">${item.order_seat }</td>
													<td class="table_td">${item.order_tel }</td>
													<td class="table_td">${item.order_menu }</td>
													<td class="table_td">${item.order_count }</td>
													<td class="table_td">${item.order_price }</td>
													<td class="table_td">${item.order_etc }</td>
													<td class="table_td">
													<form action="order_deliService">
														<input type="hidden" name="order_tel" value="${item.order_tel }">
														<input class="btn_time" type="submit" value="배달">
													</form>
													</td>
													<!-- 버튼 -->
												</tr>
												</c:if>
											</c:forEach>
												
											</tbody>
											
										</table>
										<br>
										<br>
										
										<table>
											<thead>
												<tr>
													<th>주문시간</th>
													<th>좌석번호</th>
													<th>연락처</th>
													<th>메뉴이름</th>
													<th>수량</th>
													<th>가격</th>
													<th>기타</th>
													<th>배달</th>
												</tr>
											</thead>
											<tbody>
											<c:forEach var="item" items="${pageScope.AllList }">
												<c:if test="${item.order_deli > 0 }">
												<tr>
													<td class="table_td">${item.order_time }</td>
													<td class="table_td">${item.order_seat }</td>
													<td class="table_td">${item.order_tel }</td>
													<td class="table_td">${item.order_menu }</td>
													<td class="table_td">${item.order_count }</td>
													<td class="table_td">${item.order_price }</td>
													<td class="table_td">${item.order_etc }</td>
													<td>완료</td>
													<!-- 버튼 -->
												</tr>
												</c:if>
											</c:forEach>
												
											</tbody>
											
										</table>
				
				
		</div>
	</div>
	

	
	<script type="text/javascript">
		function back(){
			location.href="main.jsp";
		}
		
	
		
	</script>


</body>
</html>
