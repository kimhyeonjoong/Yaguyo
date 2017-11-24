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

	/* 전체 폰트 설정 =>"Source Sans Pro", Helvetica, sans-serif;로 변경
	전체 폰트색=>#585858로 변경 */	

}
body{
background-color: white;
}

#w3-row-padding {
	padding-left: 30px;
	padding-right: 30px;
	
/* 	div 태그에 w3-row-padding클래스설정 되어있는데 CSS속성 안 먹혀서 같은이름으로 id선택자 생성 div에 꼭 id="w3-row-padding"기재하기 */
}

.w3-large {
	padding-top: 15px;
	
	/* 주문서에 위쪽에 너무 붙어있지 않게 패딩탑으로 간격을 줌 */
}

#form {
	margin-bottom: 0px;
	
	/* 주문하기 버튼의 공간 조절을 위해서 마진바텀  0px부여 */
}

.marginP {
	margin: 0 auto;
	
	/* p태그와 input태그 사이의 간격조절을 위해서 설정 */ 
	
}


p+span {
	float: right;
	
	/* 주문하기 버튼 오른쪽 정렬 */
}

p+span>input {
	margin-top: 50px;
	/* 주문하기 버튼  마진 설정 */
}

.icons {
	margin: 0 auto;
	text-align: center;
	
	/* 푸터의 아이콘 정렬 */
}

.copyright {
	margin: 0 auto;
	
/* 	푸터의 카피라이트 정렬 */
}

#footerInner {
	margin: 0 auto;
	/* 
	푸터이너의정렬 */
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
          
<%--           <b><i class="fa fa-asterisk fa-fw w3-margin-right w3-text-teal"></i>주문</b></p>
         <form action="user_orderService"> 
          <p>주문 정보</p>
          <p>${param.order_res_name } /  ${param.order_menu }</p> 
          <input type="hidden" value="${param.order_res_name}" name="order_res_name">
          <input type="hidden" value="${param.order_menu}" name="order_menu">
          <input type="hidden" value="${param.order_price}" name="order_price">
          <p>주문 수량</p>
          <input type="text" name="order_count">
		  <p>좌석 정보</p>          
          <input type="text" name="order_seat">
          <p>주문자 연락처</p>
          <input type="text" name="order_tel">
          <p>기타 요구 사항</p>
          <input type="text" name="order_etc">
          
       	   <p></p>
          <input type="submit" value="주문하기">
          </form> --%>
          
          
          <b><i class="fa fa-asterisk fa-fw w3-margin-right w3-text-teal"></i>주문서</b>
					</p>
					
					<form action="user_orderService" id="form"> 

						<p class="marginP"> 
							<b><p>${param.order_menu } /  ${param.order_price }원</p> </b>
         				 <input type="hidden" value="${param.order_res_name}" name="order_res_name">
         				 <input type="hidden" value="${param.order_menu}" name="order_menu">
         				 <input type="hidden" value="${param.order_price}" name="order_price">
						</p>
						<p class="marginP">주문 수량</p> 
						<input type="text" name="order_count">
						
						<p class="marginP">좌석 정보</p>
						<input type="text" name="order_seat">
						
						<p class="marginP">주문자 연락처</p>
						<input type="text" name="order_tel">
						
						<p class="marginP">기타 요구 사항<br>*결제 방식도 알려주세요. ex)카드, 현금</p>
						<input type="text" name="order_etc">

						<p></p>
						<span><input type="submit" value="주문하기"></span>
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
