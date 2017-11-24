package com.service;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;


@WebServlet("/restaurant_JoinService")
public class restaurant_JoinService extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String folder="file";
		
		ServletContext context = getServletContext();
		String saveDir = context.getRealPath(folder);
		
		
		int sizeMax = 5 * 1024 * 1024; //5MB
		String enctype = "euc-kr";
		
		MultipartRequest multi = new MultipartRequest(
				request, 			
				saveDir,		
				sizeMax,		
				enctype,		
				new DefaultFileRenamePolicy()	
		);
		
		
		String res_name = multi.getParameter("res_name");
		String res_pw = multi.getParameter("res_pw");
		String res_tel = multi.getParameter("res_tel");
		String res_location = multi.getParameter("res_location");
		String res_type = multi.getParameter("res_type");
		String res_img = multi.getFilesystemName("res_img");
		String res_notice = multi.getParameter("res_notice");
		
		
		
		String url="jdbc:mysql://localhost:3306/test";
		String db_id = "khj";
		String db_pw = "dkffka";
		String className = "com.mysql.jdbc.Driver";
		
		try {
			Class.forName(className);
	         Connection conn = DriverManager.getConnection(url, db_id, db_pw);
	         
	         String moveURL="";  
	         
	         String sql = "insert into yaguyo_restaurant values(res_num.nextval,0,?,?,?,?,?,?,?)";
	         PreparedStatement pst = conn.prepareStatement(sql);
	         pst.setString(1, res_name);
	         pst.setString(2, res_pw);
	         pst.setString(3, res_tel);
	         pst.setString(4, res_location);
	         pst.setString(5, res_type);
	         pst.setString(6, res_img);
	         pst.setString(7, res_notice);
	         int cnt = pst.executeUpdate();
	         
	         if(cnt>0){
	        	 moveURL = "restaurant_login.jsp";
	        
	         }else{
	            moveURL = "restaurant_login.jsp";
	         }
	         
	         pst.close();
	         conn.close();
	         
	         response.sendRedirect(moveURL);
	         }catch(Exception e){
	            e.printStackTrace();
	         }
	            
	}

}
