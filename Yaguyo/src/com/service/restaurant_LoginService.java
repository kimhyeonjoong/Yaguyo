package com.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.WebDAO;
import com.model.restaurantDTO;

@WebServlet("/restaurant_LoginService")
public class restaurant_LoginService extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("euc-kr");
		
		String res_name = request.getParameter("res_name");
		String res_pw = request.getParameter("res_pw");
		String moveURL = "";		
		WebDAO dao = new WebDAO();
		restaurantDTO resdto;
		try {
			resdto = dao.res_login(res_name);
			if(resdto.getRes_pw().equals(res_pw)) {
				moveURL = "restaurant_manage.jsp";
			}else {
				moveURL = "restaurant_login.jsp";
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		response.sendRedirect(moveURL);
	}

}
