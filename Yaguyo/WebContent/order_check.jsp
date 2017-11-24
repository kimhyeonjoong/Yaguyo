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

/* 전체 폰트 설정 =>"Source Sans Pro", Helvetica, sans-serif;로 변경
	전체 폰트색=>#585858로 변경 */

}

#w3-row-padding {
	padding-left: 30px;
	padding-right: 30px;
	/* 	div 태그에 w3-row-padding클래스설정 되어있는데 CSS속성 안 먹혀서 같은이름으로 id선택자 생성 div에 꼭 id="w3-row-padding"기재하기 */
}
.w3-large{
padding-top: 15px;
/* 주문서에 위쪽에 너무 붙어있지 않게 패딩탑으로 간격을 줌 */

}
#form{
margin-top: 50px;
margin-bottom: 0px;

/* 주문확인 버튼의 공간 조절을 위해서 설정 
form 태그에 id="form"꼭 추가
*/

}

.marginP{
 margin: 0 auto;
 /* p태그중 항목제목과 값 사이의 간격조절을 위해서 설정 */ 
 
}
.marginHr{
margin-top: 0px;
margin-bottom: 10px;

/* p태그를 구분해주는 줄 간격 조절
 */
}

form>span{
float: right;

/* 주문서확인버튼 정렬 */

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
	/* 푸터이너정렬스타일 */
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
          <i class="fa fa-asterisk fa-fw w3-margin-right w3-text-teal"></i>주문 내역</b></p>
          <%
            String order_tel = request.getParameter("order_tel");
         	WebDAO dao = new WebDAO();
         	orderDTO order_dto = dao.order_select(order_tel);
         	pageContext.setAttribute("order_dto", order_dto);
          %>
          
          <p class="marginP"><b>${pageScope.order_dto.order_menu} /${pageScope.order_dto.order_price}</b></p>
					<br>
					
					<p  class="marginP">주문 수량</p> 
					<hr class="marginHr">
					
					<p>${pageScope.order_dto.order_count}</p>
					
					<p  class="marginP">좌석 정보</p>
					<hr class="marginHr">
					<p>${pageScope.order_dto.order_seat}</p>
										
					<p class="marginP">주문자 연락처</p>
					<hr class="marginHr">
					<p>${pageScope.order_dto.order_tel}</p>		
								
					<p class="marginP">기타 요구 사항</p> 
					<hr class="marginHr">
					<p>${pageScope.order_dto.order_etc}</p>
					
					<p></p>
					
					총가격:${(pageScope.order_dto.order_price)*(pageScope.order_dto.order_count)}
          
         <%--  <p>주문 정보</p>
         	 ${pageScope.orderdto.order_menu} / ${pageScope.orderdto.order_price}
          <p>주문 수량</p>
         	 ${pageScope.orderdto.order_count}
		  <p>좌석 정보</p>          
           ${pageScope.orderdto.order_seat}
          <p>주문자 연락처</p>
          ${pageScope.orderdto.order_tel}
          <p>기타 요구 사항</p>
          ${pageScope.orderdto.order_etc} --%>
          
       	  
          <form action="main.html" id="form"> 
						<span><input type="submit" value="주문내역 확인"></span>
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
