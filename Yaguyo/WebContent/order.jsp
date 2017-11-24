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
body{
background-color: white;
}

#w3-row-padding {
	padding-left: 30px;
	padding-right: 30px;
	
/* 	div �±׿� w3-row-paddingŬ�������� �Ǿ��ִµ� CSS�Ӽ� �� ������ �����̸����� id������ ���� div�� �� id="w3-row-padding"�����ϱ� */
}

.w3-large {
	padding-top: 15px;
	
	/* �ֹ����� ���ʿ� �ʹ� �پ����� �ʰ� �е�ž���� ������ �� */
}

#form {
	margin-bottom: 0px;
	
	/* �ֹ��ϱ� ��ư�� ���� ������ ���ؼ� ��������  0px�ο� */
}

.marginP {
	margin: 0 auto;
	
	/* p�±׿� input�±� ������ ���������� ���ؼ� ���� */ 
	
}


p+span {
	float: right;
	
	/* �ֹ��ϱ� ��ư ������ ���� */
}

p+span>input {
	margin-top: 50px;
	/* �ֹ��ϱ� ��ư  ���� ���� */
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
	/* 
	Ǫ���̳������� */
}
</style>
<body class="w3-light-grey">

<!-- Page Container -->
<div class="w3-content w3-margin-top" style="max-width:1400px;">

  <!-- The Grid -->
  <div class="w3-row-padding">

      <div class="w3-white w3-text-grey w3-card-4">
        
        <div class="w3-container">
		
          <p class="w3-large">
          
<%--           <b><i class="fa fa-asterisk fa-fw w3-margin-right w3-text-teal"></i>�ֹ�</b></p>
         <form action="user_orderService"> 
          <p>�ֹ� ����</p>
          <p>${param.order_res_name } /  ${param.order_menu }</p> 
          <input type="hidden" value="${param.order_res_name}" name="order_res_name">
          <input type="hidden" value="${param.order_menu}" name="order_menu">
          <input type="hidden" value="${param.order_price}" name="order_price">
          <p>�ֹ� ����</p>
          <input type="text" name="order_count">
		  <p>�¼� ����</p>          
          <input type="text" name="order_seat">
          <p>�ֹ��� ����ó</p>
          <input type="text" name="order_tel">
          <p>��Ÿ �䱸 ����</p>
          <input type="text" name="order_etc">
          
       	   <p></p>
          <input type="submit" value="�ֹ��ϱ�">
          </form> --%>
          
          
          <b><i class="fa fa-asterisk fa-fw w3-margin-right w3-text-teal"></i>�ֹ���</b>
					</p>
					
					<form action="user_orderService" id="form"> 

						<p class="marginP"> 
							<b><p>${param.order_menu } /  ${param.order_price }��</p> </b>
         				 <input type="hidden" value="${param.order_res_name}" name="order_res_name">
         				 <input type="hidden" value="${param.order_menu}" name="order_menu">
         				 <input type="hidden" value="${param.order_price}" name="order_price">
						</p>
						<p class="marginP">�ֹ� ����</p> 
						<input type="text" name="order_count">
						
						<p class="marginP">�¼� ����</p>
						<input type="text" name="order_seat">
						
						<p class="marginP">�ֹ��� ����ó</p>
						<input type="text" name="order_tel">
						
						<p class="marginP">��Ÿ �䱸 ����<br>*���� ��ĵ� �˷��ּ���. ex)ī��, ����</p>
						<input type="text" name="order_etc">

						<p></p>
						<span><input type="submit" value="�ֹ��ϱ�"></span>
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
