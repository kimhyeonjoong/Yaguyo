package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

public class WebDAO {
	private String url="jdbc:mysql://localhost:3306/test";
	private String db_Id = "khj";
	private String db_Pw = "dkffka";
	private String className = "com.mysql.jdbc.Driver";
	private Connection conn;
	private ResultSet rs;
	private PreparedStatement pst;
	private String sql;
	private int cnt;
	private orderDTO orderdto;
	private restaurantDTO resdto;
	private menuDTO menu;
	private String moveURL;
	private AdminDTO admindto;
	
	public void getConnection() throws Exception{
		Class.forName(className);
		conn = DriverManager.getConnection(url, db_Id, db_Pw);
	}
	
	public void close() throws Exception {
		if(rs != null) rs.close();
		if(conn != null) conn.close();
		if(pst != null) pst.close();
	}
	
	public AdminDTO admin_login(String admin_id)throws Exception{
		getConnection();
		
		sql = "select * from yaguyo_admin where admin_id=?";
		
		pst = conn.prepareStatement(sql);
		
		pst.setString(1, admin_id);
		
		ResultSet rs = pst.executeQuery();
		
		if(rs.next()){
			admindto = new AdminDTO(rs.getString(1), rs.getString(2));
		}
		
		close();
		
		
		return admindto;
	}
	
	public String approve(int num) throws Exception{
		getConnection();
		
		sql = "update yaguyo_restaurant set res_qual = 1 where res_num = ?";
		PreparedStatement pst = conn.prepareStatement(sql);
		pst.setInt(1, num);
		
		int cnt = pst.executeUpdate();
		
		if(cnt>0) {
			moveURL = "admin_manage.jsp";
		}else {
			moveURL = "admin_manage.jsp";
		}
		close();
		
		return moveURL;
	}
	public orderDTO restaurant_list_select(String res_type) throws Exception{
		getConnection();
		
		sql = "select * from yaguyo_restaurant where res_type=?";
		pst = conn.prepareStatement(sql);
		pst.setString(1, res_type);
		
		rs = pst.executeQuery();

		if(rs.next()) {
			orderdto = new orderDTO(rs.getString(1),  rs.getString(2),  rs.getInt(3),  rs.getString(4),  rs.getInt(5),
					 rs.getString(6),  rs.getString(7), rs.getString(8));
		}
		
		close();
		return orderdto;
	}
	
	public int withdraw(int num) throws Exception{
		getConnection();
		
		sql = "update yaguyo_restaurant set res_qual = 0 where res_num = ?";
		
		pst = conn.prepareStatement(sql);
		pst.setInt(1, num);

		int cnt = pst.executeUpdate();

		
		
		close();
		return cnt;
	}
	
	public restaurantDTO res_login(String res_id)throws Exception{
		getConnection();
		
		sql = "select * from yaguyo_restaurant where res_id=?";
		
		pst = conn.prepareStatement(sql);
		
		pst.setString(1, res_id);
		
		ResultSet rs = pst.executeQuery();
		
		if(rs.next()){
			resdto = new restaurantDTO(rs.getString(1), rs.getString(2));
		}
		close();
		
		return resdto;
	}
	
	
	
	
	
	public int res_update(String res_name, String res_pw, String res_tel, String res_location, String res_type, String res_notice) throws Exception{
		
		getConnection();
		
		sql = "update yaguyo_restaurant set res_pw=?,res_tel=?,res_location=?,res_type=?,res_notice=? where res_name=?";
		pst = conn.prepareStatement(sql);
		
		pst.setString(1, res_pw);
		pst.setString(2, res_tel);
		pst.setString(3, res_location);
		pst.setString(4, res_type);
		pst.setString(5, res_notice);
		pst.setString(6, res_name);
		cnt = pst.executeUpdate();
		
		close();
		
		return cnt;
	}
	
	public orderDTO order_select(String order_tel) throws Exception{
		
		getConnection();
	
		sql = "select * from yaguyo_order where order_tel=?";
		pst = conn.prepareStatement(sql);
	
		pst.setString(1, order_tel);
		
		rs = pst.executeQuery();
		
		if(rs.next()){
			orderdto = new orderDTO(
					rs.getString(1),
					rs.getString(2),
					rs.getInt(3),
					rs.getString(4),
					rs.getInt(5),
					rs.getString(6),
					rs.getString(7),
					rs.getString(8));
		}
		
		close();
		
		return orderdto;
	}
	
	
	public ArrayList<orderDTO> orderAllList(String order_res_name) throws Exception {
		ArrayList<orderDTO> AllList = new ArrayList<orderDTO>();

		getConnection();

		sql = "select * from yaguyo_order where order_res_name = ?";
		pst = conn.prepareStatement(sql);

		pst.setString(1, order_res_name);
		rs = pst.executeQuery();

		while (rs.next()) {

			AllList.add(new orderDTO(
					rs.getString(1), 
					rs.getString(2), 
					rs.getInt(3), 
					rs.getString(4),
					rs.getInt(5),
					rs.getString(6),
					rs.getString(7),
					rs.getInt(8), 
					rs.getString(9)));
		}
		close();
		
		return AllList;

	}
	
	
	public ArrayList<restaurantDTO> restaurant_info_select(String res_type) throws Exception{
		ArrayList<restaurantDTO> list = new ArrayList<restaurantDTO>();
		getConnection();
		String sql = "select * from yaguyo_restaurant where res_type=?";
		PreparedStatement pst = conn.prepareStatement(sql);
		pst.setString(1, res_type);
		
		ResultSet rs = pst.executeQuery();
		
		while(rs.next()) {
			list.add(new restaurantDTO(rs.getString(3),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9)));
		}
		
		close();
		return list;
	}
	public restaurantDTO restaurant_info_select2(String res_name) throws Exception{
		
		getConnection();
		String sql = "select * from yaguyo_restaurant where res_name=?";
		PreparedStatement pst = conn.prepareStatement(sql);
		
		pst.setString(1, res_name);
		
		ResultSet rs = pst.executeQuery();
		
		if(rs.next()) {
			resdto = new restaurantDTO(rs.getString(3),rs.getString(5),rs.getString(6),rs.getString(7),rs.getString(8),rs.getString(9));
		}
		
		close();
		return resdto;
	}

	
	public int restaurant_menu_insert(String res_name, String menu_name, int menu_price, String menu_img) throws Exception{
		
		getConnection();
		
		sql = "insert into yaguyo_menu values(?,?,?,?)";
		pst = conn.prepareStatement(sql);
		pst.setString(1, res_name);
		pst.setString(2, menu_name);
		pst.setInt(3, menu_price);
		pst.setString(4, menu_img);
		
		cnt = pst.executeUpdate();
		
		close();
		
		return cnt;
	}
	
	public ArrayList<menuDTO> menu_select(String res_name) throws Exception{
		getConnection();
		ArrayList<menuDTO> list = new ArrayList<menuDTO>();
		sql = "select * from yaguyo_menu where menu_res_name = ?";
		pst = conn.prepareStatement(sql);
		pst.setString(1, res_name);
		
		rs = pst.executeQuery();
		while(rs.next()) {
			list.add(new menuDTO(rs.getString(1), rs.getString(2), rs.getInt(3), rs.getString(4)));
		}
		close();
		return list;
	}
	
	public int order_insert(String order_res_name, String order_menu, int order_count, 
			String order_etc, int order_pirce, String order_seat, String order_tel) throws Exception{
		
		getConnection();
		sql = "insert into yaguyo_order values(?,?,?,?,?,?,?,0,sysdate)";
		pst = conn.prepareStatement(sql);
		pst.setString(1, order_res_name);
		pst.setString(2, order_menu);
		pst.setInt(3, order_count);
		pst.setString(4, order_etc);
		pst.setInt(5, order_pirce);
		pst.setString(6, order_seat);
		pst.setString(7, order_tel);
		
		cnt = pst.executeUpdate();
		close();
		
		return cnt;
	}
	public int order_drliUpdate(String order_tel) throws Exception {
		
		getConnection();

		sql = "update yaguyo_order set order_deli=1 where  order_tel =?";
		pst = conn.prepareStatement(sql);

		pst.setString(1, order_tel);

		cnt = pst.executeUpdate();

		close();

		return cnt;
		
		
	}
	
		public ResultSet restaurant_compare(String res_name) throws Exception{
			getConnection();
			
			sql = "select * from yaguyo_restaurant where res_name = ?";
			pst = conn.prepareStatement(sql);
			pst.setString(1, res_name);
			
			rs = pst.executeQuery();
			
			return rs;
			
		}
	
}
