<%@page import="java.sql.ResultSet"%>
<%@page import="com.model.WebDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("euc-kr");
		
		String res_name = request.getParameter("res_name");
		
		WebDAO dao = new WebDAO();
		ResultSet rs = dao.restaurant_compare(res_name);
		
	%>
	
	<script type="text/javascript">
		var over = opener.document.getElementById("overView");
	
		function restaurant_compareClose(name, num){
			cnt = num;
			opener.resWrite.res_name.value = name;
			opener.resWrite.res_name.readOnly = true;
			opener.resWrite.btn.style.display = "none";
			over.innerHTML = " 중복확인이 완료 되었습니다."
			window.close();
			opener.infoWrite.user.focus();
			
		}
		
	
	</script>
	
	<form action="restaurant_compare.jsp" method="post" name="resWrite">
			<%
				try{
					if(rs.next()){
						
			%>
				현재 <%=res_name %> 사용불가능<br>
				<input type="text" name="res_name" placeholder="상호명을 입력하세요">
				<input type="submit" value="중복체크" onclick="checking()">
			
			<%		}else if(res_name == ""){
				
			%>
				<input type="text" name="res_name" placeholder="상호명을 입력하세요">
				<input type="submit" value="중복체크" onclick="checking()">
			
			<%
					}else{
						
			%>
				현재 <%=res_name %> 사용가능
				<input type="button" value="현재 상호명 선택" onClick="restaurant_compareClose('<%=res_name %>','1');">
				
			<%		
					}
				}catch(Exception e){
					e.printStackTrace();
				}
			
			%>
	
	</form>
	<script type="text/javascript">
		function checking(){
			var name = document.resWrite.res_name;
			
			if(document.resWrite.res_name.value == ""){
				alert("상호명를 입력 하세요.");
				res_name.focus();
				return false();
			}
		}
	
	</script>


</body>
</html>