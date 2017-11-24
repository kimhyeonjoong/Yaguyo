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
						//���ǰ������� �ͼ� �ѷ��ֱ�
						
						WebDAO dao = new WebDAO();
						ArrayList<orderDTO> AllList = dao.orderAllList((String)session.getAttribute("res_name"));//�ӽ� DB����
						pageContext.setAttribute("AllList", AllList);
						
					%>
		<!-- Main -->
		<div id="main">
			<!-- Login -->
				<h2 class="major">�ֹ����</h2>
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
										<br>
										<br>
										
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
	</div>
	

	
	<script type="text/javascript">
		function back(){
			location.href="main.jsp";
		}
		
	
		
	</script>


</body>
</html>
