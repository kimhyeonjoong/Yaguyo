package com.service;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.WebDAO;

/**
 * Servlet implementation class user_orderService
 */
@WebServlet("/user_orderService")
public class user_orderService extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String order_res_name = request.getParameter("order_res_name");
		String order_menu = request.getParameter("order_menu");
		int order_count = Integer.parseInt(request.getParameter("order_count"));
		String order_etc = request.getParameter("order_etc");
		int order_pirce = Integer.parseInt(request.getParameter("order_price"));
        String order_seat = request.getParameter("order_seat");
        String order_tel = request.getParameter("order_tel");
        
        
        WebDAO dao = new WebDAO();

		try{
			
			String moveURL ="";
			int cnt = dao.order_insert(order_res_name, order_menu, order_count, order_etc, order_pirce, order_seat, order_tel);
			
			if(cnt > 0){
				moveURL = "order_check.jsp?order_tel="+order_tel;
			}else{
				moveURL= "order.jsp";
			}
			
			response.sendRedirect(moveURL);
		
		}catch (Exception e){
			e.printStackTrace();
		}

	}

}
