<%@page import="com.model.orderDTO"%>
<%@page import="com.model.menuDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.WebDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<!DOCTYPE html>
<html>
<title>W3.CSS Template</title>

<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel='stylesheet'
	href='https://fonts.googleapis.com/css?family=Roboto'>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
html, body, h1, h2, h3, h4, h5, h6 {
	font-family: "Roboto", sans-serif
}
</style>
<head>
<style type="text/css">

table{
	width: 1000px;
}

.table_tr {
	width: 100%;
	text-align: center;
	background-color: #009688;
	color: white;
	opacity: 0.7;
	font-size: 1.5em;
	padding: 7px, 3px;
	margin: 7px, 0px;
}
.table_td{

	padding: 3px 10px;
}
.table_style {
	margin: 10px auto;
	margin-bottom: 30px; text-align : center;
	border: 1px solid #009688;
	text-align: center
}
.btn_time{
	color: white;
	background-color: #009688;
	opacity: 0.5;
	border: none;
}
.w3-container{

}
</style>
</head>

<body class="w3-light-grey">

	<!-- Page Container -->
	<div class="w3-content w3-margin-top" style="max-width: 1400px;">

		<!-- The Grid -->
		<div class="w3-row-padding">

			<div class="w3-white w3-text-grey w3-card-4">
				<div class="w3-display-container">
					
					<div class="w3-display-bottomleft w3-container w3-text-black">
					</div>
					
					<%
						//세션값가지고 와서 뿌려주기
						
						WebDAO dao = new WebDAO();
						ArrayList<orderDTO> AllList = dao.orderAllList((String)session.getAttribute("res_name"));//임시 DB저장
						pageContext.setAttribute("AllList", AllList);
						
					%>
				</div>
				<div class="w3-container">
					<p class="w3-large"><h1 id="h1"><i class="fa fa-asterisk fa-fw w3-margin-right w3-text-teal"></i>상호명</h1></p>
					
					
					
					
					
					
					
					<!-- 스타일적용문제로 새롭게 만든 테이블입니다. 이 테이블로 작동되지 않을시 알려주세여 기존디자인 테이블로 다시 수정하겠습니다 --> 
					<div class="table-wrapper" >
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
									</div>
									<br>
									
					<div class="table-wrapper">
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
					
	<!---------------------------------------------------------------------------------------------------------------------------->				
					
			
				</div>
			</div>
			<br>

			<!-- End Grid -->
		</div>

		<!-- End Page Container -->
	</div>

	

</body>
</html>