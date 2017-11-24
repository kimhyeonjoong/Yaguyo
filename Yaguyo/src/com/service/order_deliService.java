package com.service;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.WebDAO;

@WebServlet("/order_deliService")
public class order_deliService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String order_tel = request.getParameter("order_tel");

		try {
			WebDAO dao = new WebDAO();

			int cnt = dao.order_drliUpdate(order_tel);
			String moveURL="";
			if (cnt > 0) {
				moveURL = "order_list2.jsp";
			}
			moveURL = "order_list2.jsp";
			response.sendRedirect(moveURL);
		} catch (Exception e) {
			e.printStackTrace();

		}
		
	}

}
