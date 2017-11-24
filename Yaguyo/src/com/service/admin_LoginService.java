package com.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.AdminDTO;
import com.model.WebDAO;


@WebServlet("/admin_LoginService")
public class admin_LoginService extends HttpServlet {
	private static final long serialVersionUID = 1L;
	AdminDTO admindto = null;
	String moveURL; 
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String admin_id = request.getParameter("admin_id");
		String admin_pw = request.getParameter("admin_pw");
		WebDAO dao = new WebDAO();
		
		try {
			admindto = dao.admin_login(admin_id);
			if(admindto.getAdmin_id().equals(admin_id)&&admindto.getAdmin_pw().equals(admin_pw)) {
				moveURL = "admin_manage.jsp";
				HttpSession session = request.getSession();
				session.setAttribute("admin_id", admin_id);		
			}else {
				moveURL = "admin_login.jsp";
			}
			response.sendRedirect(moveURL);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
