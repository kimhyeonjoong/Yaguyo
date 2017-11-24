<%@page import="com.model.WebDAO"%>
<%@page import="com.model.orderDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>W3.CSS Template</title>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<link rel="stylesheet" href="assets/css/restaurant_list.css" />

<style>

html, body, h1, h2, h3, h4, h5, h6 {
	font-family: "Source Sans Pro", Helvetica, sans-serif;
	color: #585858;

/* ��ü ��Ʈ ���� =>"Source Sans Pro", Helvetica, sans-serif;�� ����
	��ü ��Ʈ��=>#585858�� ���� */

}

#w3-row-padding {
	padding-left: 30px;
	padding-right: 30px;
	/* 	div �±׿� w3-row-paddingŬ�������� �Ǿ��ִµ� CSS�Ӽ� �� ������ �����̸����� id������ ���� div�� �� id="w3-row-padding"�����ϱ� */
}
.w3-large{
padding-top: 15px;
/* �ֹ����� ���ʿ� �ʹ� �پ����� �ʰ� �е�ž���� ������ �� */

}
#form{
margin-top: 50px;
margin-bottom: 0px;

/* �ֹ�Ȯ�� ��ư�� ���� ������ ���ؼ� ���� 
form �±׿� id="form"�� �߰�
*/

}

.marginP{
 margin: 0 auto;
 /* p�±��� �׸������ �� ������ ���������� ���ؼ� ���� */ 
 
}
.marginHr{
margin-top: 0px;
margin-bottom: 10px;

/* p�±׸� �������ִ� �� ���� ����
 */
}

form>span{
float: right;

/* �ֹ���Ȯ�ι�ư ���� */

}
.icons {
	margin: 0 auto;
	text-align: center;
	
	/* Ǫ���� ������ ���� */
}

.copyright {
	margin: 0 auto;
	
/* 	Ǫ���� ī�Ƕ���Ʈ ���� */
}

#footerInner {
	margin: 0 auto;
	/* Ǫ���̳����Ľ�Ÿ�� */
}
</style>
<body class="w3-light-grey">

<!-- Page Container -->
<div class="w3-content w3-margin-top" style="max-width:1400px;">

  <!-- The Grid -->
  <div class="w3-row-padding">

      <div class="w3-white w3-text-grey w3-card-4">
        
        <div class="w3-container">

          <p class="w3-large"><b>
          <i class="fa fa-asterisk fa-fw w3-margin-right w3-text-teal"></i>�ֹ� ����</b></p>
          <%
            String order_tel = request.getParameter("order_tel");
         	WebDAO dao = new WebDAO();
         	orderDTO order_dto = dao.order_select(order_tel);
         	pageContext.setAttribute("order_dto", order_dto);
          %>
          
          <p class="marginP"><b>${pageScope.order_dto.order_menu} /${pageScope.order_dto.order_price}</b></p>
					<br>
					
					<p  class="marginP">�ֹ� ����</p> 
					<hr class="marginHr">
					
					<p>${pageScope.order_dto.order_count}</p>
					
					<p  class="marginP">�¼� ����</p>
					<hr class="marginHr">
					<p>${pageScope.order_dto.order_seat}</p>
										
					<p class="marginP">�ֹ��� ����ó</p>
					<hr class="marginHr">
					<p>${pageScope.order_dto.order_tel}</p>		
								
					<p class="marginP">��Ÿ �䱸 ����</p> 
					<hr class="marginHr">
					<p>${pageScope.order_dto.order_etc}</p>
					
					<p></p>
					
					�Ѱ���:${(pageScope.order_dto.order_price)*(pageScope.order_dto.order_count)}
          
         <%--  <p>�ֹ� ����</p>
         	 ${pageScope.orderdto.order_menu} / ${pageScope.orderdto.order_price}
          <p>�ֹ� ����</p>
         	 ${pageScope.orderdto.order_count}
		  <p>�¼� ����</p>          
           ${pageScope.orderdto.order_seat}
          <p>�ֹ��� ����ó</p>
          ${pageScope.orderdto.order_tel}
          <p>��Ÿ �䱸 ����</p>
          ${pageScope.orderdto.order_etc} --%>
          
       	  
          <form action="main.html" id="form"> 
						<span><input type="submit" value="�ֹ����� Ȯ��"></span>
					</form>
          
          <br>
        </div>
      </div><br>

  <!-- End Grid -->
  </div>
  
  <!-- End Page Container -->
</div>



</body>
</html>
