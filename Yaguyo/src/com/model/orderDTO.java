package com.model;

public class orderDTO {
	private String order_res_name;
	private String order_menu;
	private int order_count;
	private String order_etc;
	private int order_price;
	private String order_seat;
	private String order_tel;
	private int order_deli;
	private String order_time;
	
	public orderDTO(String order_res_name, String order_menu, int order_count, String order_etc, int order_price,
			String order_seat, String order_tel, String order_time) {
		this.order_res_name = order_res_name;
		this.order_menu = order_menu;
		this.order_count = order_count;
		this.order_etc = order_etc;
		this.order_price = order_price;
		this.order_seat = order_seat;
		this.order_tel = order_tel;
		this.order_time = order_time;
	}

	public orderDTO(String order_res_name, String order_menu, int order_count, String order_etc, int order_price,
			String order_seat, String order_tel, int order_deli, String order_time) {
		this.order_res_name = order_res_name;
		this.order_menu = order_menu;
		this.order_count = order_count;
		this.order_etc = order_etc;
		this.order_price = order_price;
		this.order_seat = order_seat;
		this.order_tel = order_tel;
		this.order_deli = order_deli;
		this.order_time = order_time;
	}





	public String getOrder_res_name() {
		return order_res_name;
	}

	public String getOrder_menu() {
		return order_menu;
	}

	public int getOrder_count() {
		return order_count;
	}

	public String getOrder_etc() {
		return order_etc;
	}

	public int getOrder_price() {
		return order_price;
	}

	public String getOrder_seat() {
		return order_seat;
	}

	public String getOrder_tel() {
		return order_tel;
	}

	public int getOrder_deli() {
		return order_deli;
	}

	public String getOrder_time() {
		return order_time;
	}


	
	
	
	
}
