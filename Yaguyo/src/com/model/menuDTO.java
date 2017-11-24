package com.model;

public class menuDTO {
	private String menu_res_name;
	private String menu_name;
	private int menu_price;
	private String menu_img;
	
	public menuDTO(String menu_res_name, String menu_name, int menu_price, String menu_img) {
		this.menu_res_name = menu_res_name;
		this.menu_name = menu_name;
		this.menu_price = menu_price;
		this.menu_img = menu_img;
	}

	public String getMenu_res_name() {
		return menu_res_name;
	}

	public String getMenu_name() {
		return menu_name;
	}

	public int getMenu_price() {
		return menu_price;
	}

	public String getMenu_img() {
		return menu_img;
	}

	
	
	
	
}
