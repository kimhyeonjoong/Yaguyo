<%@page import="com.model.WebDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.restaurantDTO"%>
<%@page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.net.URLEncoder"%>

<!DOCTYPE HTML>
<!--
   Phantom by HTML5 UP
   html5up.net | @ajlkn
   Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
   <head>
      <title>Yaguyo</title>
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

                     <!-- Logo -->
                        <a href="index.html" class="logo">
                        	${param.res_type }
                        </a>


                  </div>
               </header>

            

            
               
               <!-- Main -->
               <div id="main">
                  <div class="inner">
                     <header>
                        <h1>�ֹ��� ���Ը� �����ϼ���<br /></h1> <!-- ���� ���þ˸��޽��� -->
                        
                     </header>
                     <section class="tiles">
                          	<%
                          		String res_type = request.getParameter("res_type");
                            	WebDAO dao = new WebDAO();
                              	ArrayList<restaurantDTO> list = dao.restaurant_info_select(res_type);
                              	pageContext.setAttribute("list",list);
                              	
                            %>
                                       <!-- �߰��� ���� ������ŭ �ݺ� -->
                  <%--       <c:forEach var="list" items="${pageScope.list }">
	                        <article class="style1"> <!-- Ŭ���� ���Ӹ��� style6���� ���� -->
	                           <span class="image">
	                              <img src="file/${list.res_img}" alt="" /> <!-- �ش��ȣ�̹����ҷ����� -->
	                           </span>
	                           <a href="restaurant.jsp?res_name=${list.res_name }"> 
		                           <h2> ${list.res_name }</h2>
		                           <div class="content">
		                              <p> ${list.res_notice }</p>
		                           </div>
	                           </a>
	                        </article>
                       </c:forEach> --%>
                       <%
							for(int i=0; i<list.size();i++){
								String src = "file/"+list.get(i).getRes_img();
								String name = list.get(i).getRes_name();
								String notece = list.get(i).getRes_notice();
								%>
								<article class="style1">
		                           <span class="image">
		                              <img src="<%=src %>" alt="" /> <!-- �ش��ȣ�̹����ҷ����� -->
		                           </span>
									<a href="restaurant.jsp?res_name=<%=name%>"> 
		                           <h2> <%=name%></h2>
		                           <div class="content">
		                              <p> <%=notece%></p>
		                           </div>
	                           </a>
	                        </article>
							<% }
                       %>
                       
                       
                       
                       
                       
                                 <!-- res_type��  ��ġ�ϴ� ����������ŭ �ݺ��ؼ� ������ش�. -->
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
                        <li>&copy; Design By ������, �ڴ���, �Ź̼�, �Ӽ���, ���μ�</li>
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


