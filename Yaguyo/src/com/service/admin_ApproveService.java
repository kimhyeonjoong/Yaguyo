package com.service;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.WebDAO;

@WebServlet("/admin_ApproveService")
public class admin_ApproveService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int num = Integer.parseInt(request.getParameter("num"));
		
		WebDAO dao = new WebDAO();
		
		try {
			response.sendRedirect(dao.approve(num));
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

}
