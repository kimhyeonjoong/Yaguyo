<%@page import="java.net.URLDecoder"%>
<%@page import="com.model.menuDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.restaurantDTO"%>
<%@page import="com.model.WebDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>
<!--
   Phantom by HTML5 UP
   html5up.net | @ajlkn
   Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>Generic - Phantom by HTML5 UP</title>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
<link rel="stylesheet" href="assets/css/restaurant_list.css" />
<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
<style type="text/css">


.icons{
margin: 0 auto;
text-align: center;
}
.copyright{
margin: 0 auto;
}
#footerInner{
margin: 0 auto;
}

</style>
</head>
<body>
	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Header -->
		<header id="header">
			<div class="inner">
				<%
					String res_name = request.getParameter("res_name");

					WebDAO dao = new WebDAO();
					restaurantDTO resdto = dao.restaurant_info_select2(res_name);
					pageContext.setAttribute("resdto", resdto);
				%>
				
				
				<!-- Logo -->
                        <a href="index.html" class="logo">
                    		${pageScope.resdto.res_type }
                        </a>
			</div>
		</header>

		

		<!-- Main -->
		<div id="main">
			<div class="inner">
				
				<h1> ${pageScope.resdto.res_name }</h1> 
					
						<section class="menu-list">
							<%
                          		ArrayList<menuDTO> list = dao.menu_select(res_name);
                          		pageContext.setAttribute("list",list);
							%>
							
							<!-- 가게의 메뉴테이블에 있는 메뉴의 수만큼 반복 -->
							<c:forEach var="list" items="${pageScope.list }">
								<div class="menu-wrapper2" style="text-align:center">
	
									<article class="style1" style="margin-bottom: 20px;"> <!-- 클래스 네임명이 style6까지 있음 -->
										
										<a href="order.jsp?order_res_name=${list.menu_res_name }&order_menu=${list.menu_name}&order_price=${list.menu_price}"> 
										<span class="image main" style="margin-bottom: 0px;"> 
										<img src="file/${list.menu_img}" alt="" /> <!-- 해당상호이미지불러오기 -->
										</span> <span> ${list.menu_name }</span><br> <span> ${list.menu_price }원</span> 
										</a>
									</article>
								</div>
							</c:forEach>
						</section>
					
				
			</div>
		</div>
		<!-- Footer -->
                <footer id="footer">
               	 <section id="footerInner">
                        <h2 class="icons">Yaguyo Contact</h2>
                        <br>
                        <ul class="icons">
                        	
                           <li><a href="#" class="icon style2 fa-facebook"><span class="label">Facebook</span></a></li>
                           <li><a href="#" class="icon style2 fa-instagram"><span class="label">Instagram</span></a></li>
                           <li><a href="#" class="icon style2 fa-phone"><span class="label">Phone</span></a></li>
                           <li><a href="#" class="icon style2 fa-envelope-o"><span class="label">Email</span></a></li>
                        </ul>
                <ul class="icons">
                        <li>&copy; Design By 김현중, 박다정, 신미소, 임성훈, 조민서</li>
                     </ul>
                     </section>
               </footer>

         </div>

      <!-- Scripts -->
         <script src="assets/js/jquery.min.js"></script>
         <script src="assets/js/skel.min.js"></script>
         <script src="assets/js/util.js"></script>
         <!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
         <script src="assets/js/main.js"></script>

</body>
</html>
