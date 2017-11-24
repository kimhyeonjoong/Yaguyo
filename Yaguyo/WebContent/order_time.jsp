<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<title>W3.CSS Template</title>
<meta charset="EUC-KR">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel='stylesheet' href='https://fonts.googleapis.com/css?family=Roboto'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
html,body,h1,h2,h3,h4,h5,h6 {font-family: "Roboto", sans-serif}
</style>

<head>
<style type="text/css">
table{
	margin : 0 auto;
	width: 100%;
	/* text-align: center; */
}
.tr_size{
	width: 100%;
	text-align: center;
}
.td_size{
	font-size: 1.5em;
	width: 150px;
}	
.price_div{
	text-align: center;
}
.price{
	font-size: 1.5em;
	font-weight : bolder;
	color: #009688;
}
.button_div{
	margin: 0 auto;
	text-align: center;
}
.button_time{
	/* width: 200px;
	height: 150px; */
	background-color: #009688;
	color: white;
	font-size: 2em;
	border: none;
	margin-bottom: 30px;
	padding: 5px;
	opacity: 0.7;
}
.menu_list{
	font-size: 1em;
}
.menu_list{
	width: 70%;
}
.title{
	background-color: #009688;
	color: white;
	opacity: 0.3;
	padding: 2px 10px;
	font-size: 1em;

}

</style>
</head>
<body class="w3-light-grey">

<!-- Page Container -->
<div class="w3-content w3-margin-top" style="max-width:1400px;">

  <!-- The Grid -->
  <div class="w3-row-padding">

      <div class="w3-white w3-text-grey w3-card-4">
        <div class="w3-display-container">
          <img src="/w3images/avatar_hat.jpg" style="width:100%" alt="Avatar">
          <div class="w3-display-bottomleft w3-container w3-text-black">
            <h2>???? �����̸�?????</h2>
          </div>
        </div>
        <div class="w3-container">
          <p class="w3-large w3-text-theme"><b><i class="fa fa-globe fa-fw w3-margin-right w3-text-teal"></i>�ֹ��� ����</b></p>
          <p><i class="fa fa-briefcase fa-fw w3-margin-right w3-large w3-text-teal"></i>�¼���ȣ</p>
          <p><i class="fa fa-home fa-fw w3-margin-right w3-large w3-text-teal"></i>�ֹ��� ����ó��ȣ</p>
          <p><i class="fa fa-envelope fa-fw w3-margin-right w3-large w3-text-teal"></i>�ֹ��ð�</p>
          <hr>

          <p class="w3-large"><b><i class="fa fa-asterisk fa-fw w3-margin-right w3-text-teal"></i>�ֹ� �޴�</b></p>
          
          <table class="menu_list">
          	<tr>
          		<td class="title"><b>�޴��̸�</b></td>
          		<td class="title"><b>����</b></td>
          	</tr>
          	
          	<!-- for�� ������ -->
          	<tr>
          		<td>�޴� ���</td>
          		<td>���� ���</td>
          	</tr>
          
          	<tr class="note">
          		<td colspan="2" class="title">
          		<b>��Ÿ�䱸����</b>
          		</td>
          	</tr>
          	
          	<tr>
          		<td colspan="2">
          			��Ÿ�䱸���� ���
          		</td>
          	</tr>
          
          
          </table>
       
          <br>

          <p class="w3-large w3-text-theme"><b><i class="fa fa-globe fa-fw w3-margin-right w3-text-teal"></i>�ֹ��ð�</b></p>
          
          <form action="">
          <table>
         	<tr class="tr_size">
         		<td class="td_size"><input type="radio" name="time" value="15" id="time"><label for="time"> 15�� </label></td>
         		<td class="td_size"><input type="radio" name="time" value="30" id="time1"><label for="time1"> 30�� </label> </td>
         		<td class="td_size"><input type="radio" name="time" value="45" id="time2"><label for="time2"> 40�� </label></td>
         		<td class="td_size"><input type="radio" name="time" value="60" id="time3"><label for="time3"> 1�ð� </label></td>  	
          	</tr>
          </table>
          	<hr>
          		<div class="price_div">
          	 	          <p class="price">�� ����: </p>
          		</div>
          	<hr>
         	<div class="button_div">
          		<input type="submit" value="�ֹ�Ȯ��" class="button_time">      
          	</div>   
          </form>
        </div>
      </div><br>




  <!-- End Grid -->
  </div>
  
  <!-- End Page Container -->
</div>

<footer name="footer_order" class="w3-container w3-teal w3-center w3-margin-top">
  <p>Find me on social media.</p>
  <i class="fa fa-facebook-official w3-hover-opacity"></i>
  <i class="fa fa-instagram w3-hover-opacity"></i>
  <i class="fa fa-snapchat w3-hover-opacity"></i>
  <i class="fa fa-pinterest-p w3-hover-opacity"></i>
  <i class="fa fa-twitter w3-hover-opacity"></i>
  <i class="fa fa-linkedin w3-hover-opacity"></i>
  <p>Powered by <a href="https://www.w3schools.com/w3css/default.asp" target="_blank">w3.css</a></p>
</footer>

</body>
</html>