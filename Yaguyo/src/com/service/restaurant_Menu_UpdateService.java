package com.service;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.WebDAO;
import com.model.menuDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/restaurant_Menu_UpdateService")
public class restaurant_Menu_UpdateService extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		String folder = "file";
		
		ServletContext context = getServletContext();
		String saveDir = context.getRealPath(folder);
		
		
		int sizeMax = 5*1024*1024;  //5MB
		String enctype = "euc-kr";
		
		MultipartRequest multi = new MultipartRequest(
				request,
				saveDir,
				sizeMax,
				enctype,
				new DefaultFileRenamePolicy() 
				);
		
		String menu_name = multi.getParameter("menu_name");
		int menu_price = Integer.parseInt(multi.getParameter("menu_price"));
		String menu_img = multi.getFilesystemName("menu_img");
		String original_file = multi.getOriginalFileName("menu_img");
		
		
		WebDAO dao = new WebDAO();
		String moveURL = "";
		HttpSession session = request.getSession();
		String res_name = (String)session.getAttribute("res_name");
		System.out.println(res_name);
		System.out.println(menu_name);
		try {
			int cnt = dao.restaurant_menu_insert(res_name ,menu_name, menu_price, menu_img);
			
			if(cnt > 0) {
				moveURL = "restaurant_manage.jsp";
			}else {
				moveURL = "restaurant_menu_insert.jsp";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		response.sendRedirect(moveURL);
	}

}
