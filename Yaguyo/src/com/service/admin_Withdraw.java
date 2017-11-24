package com.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.WebDAO;

@WebServlet("/admin_Withdraw")
public class admin_Withdraw extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int num = Integer.parseInt(request.getParameter("num"));
		WebDAO dao = new WebDAO();
		
		
		String moveURL ="";
		try {
			int cnt = dao.withdraw(num);
			if (cnt > 0) {
				moveURL = "admin_manage.jsp";
			} else {
				moveURL = "admin_manage.jsp";
			}
			response.sendRedirect(moveURL);

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
