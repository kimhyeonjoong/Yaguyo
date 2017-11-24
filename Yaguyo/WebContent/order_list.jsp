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
						//���ǰ������� �ͼ� �ѷ��ֱ�
						
						WebDAO dao = new WebDAO();
						ArrayList<orderDTO> AllList = dao.orderAllList((String)session.getAttribute("res_name"));//�ӽ� DB����
						pageContext.setAttribute("AllList", AllList);
						
					%>
				</div>
				<div class="w3-container">
					<p class="w3-large"><h1 id="h1"><i class="fa fa-asterisk fa-fw w3-margin-right w3-text-teal"></i>��ȣ��</h1></p>
					
					
					
					
					
					
					
					<!-- ��Ÿ�����빮���� ���Ӱ� ���� ���̺��Դϴ�. �� ���̺�� �۵����� ������ �˷��ּ��� ���������� ���̺�� �ٽ� �����ϰڽ��ϴ� --> 
					<div class="table-wrapper" >
										<table>
											<thead>
												<tr>
													<th>�ֹ��ð�</th>
													<th>�¼���ȣ</th>
													<th>����ó</th>
													<th>�޴��̸�</th>
													<th>����</th>
													<th>����</th>
													<th>��Ÿ</th>
													<th>���</th>
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
														<input class="btn_time" type="submit" value="���">
													</form>
													</td>
													<!-- ��ư -->
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
													<th>�ֹ��ð�</th>
													<th>�¼���ȣ</th>
													<th>����ó</th>
													<th>�޴��̸�</th>
													<th>����</th>
													<th>����</th>
													<th>��Ÿ</th>
													<th>���</th>
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
													<td>�Ϸ�</td>
													<!-- ��ư -->
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