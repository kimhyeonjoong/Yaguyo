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
			over.innerHTML = " �ߺ�Ȯ���� �Ϸ� �Ǿ����ϴ�."
			window.close();
			opener.infoWrite.user.focus();
			
		}
		
	
	</script>
	
	<form action="restaurant_compare.jsp" method="post" name="resWrite">
			<%
				try{
					if(rs.next()){
						
			%>
				���� <%=res_name %> ���Ұ���<br>
				<input type="text" name="res_name" placeholder="��ȣ���� �Է��ϼ���">
				<input type="submit" value="�ߺ�üũ" onclick="checking()">
			
			<%		}else if(res_name == ""){
				
			%>
				<input type="text" name="res_name" placeholder="��ȣ���� �Է��ϼ���">
				<input type="submit" value="�ߺ�üũ" onclick="checking()">
			
			<%
					}else{
						
			%>
				���� <%=res_name %> ��밡��
				<input type="button" value="���� ��ȣ�� ����" onClick="restaurant_compareClose('<%=res_name %>','1');">
				
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
				alert("��ȣ�� �Է� �ϼ���.");
				res_name.focus();
				return false();
			}
		}
	
	</script>


</body>
</html>