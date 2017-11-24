package com.service;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.WebDAO;
@WebServlet("/restaurant_UpdateService")
public class restaurant_UpdateService extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("euc-kr");
		
		HttpSession session = request.getSession();
		
		String res_name =  (String)session.getAttribute("res_name");
		String res_pw = request.getParameter("res_pw");
		String res_tel = request.getParameter("res_tel");
		String res_location = request.getParameter("res_location");
		String res_type = request.getParameter("res_type");
		String res_notice = request.getParameter("res_notice");
		
		WebDAO dao = new WebDAO();
		
		try{
			
			String moveURL ="";
			int cnt = dao.res_update(res_name, res_pw, res_tel, res_location, res_type, res_notice);
			
			if(cnt > 0){
				moveURL = "restaurant_manage.jsp";
			}else{
				moveURL= "restaurant_manage.jsp";
			}
			
			response.sendRedirect(moveURL);
		
		}catch (Exception e){
			e.printStackTrace();
		}

	}
}	
