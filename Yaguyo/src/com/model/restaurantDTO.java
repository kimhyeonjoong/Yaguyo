package com.model;

public class restaurantDTO {
	private String res_name;
	private String res_pw;
	private String res_tel;
	private String res_location;
	private String res_type;
	private String res_img;
	private String res_notice;

	public restaurantDTO(String res_name, String res_pw, String res_tel, String res_location, String res_type, String res_img,
			String res_notice) {
		this.res_name = res_name;
		this.res_pw = res_pw;
		this.res_tel = res_tel;
		this.res_location = res_location;
		this.res_type = res_type;
		this.res_img = res_img;
		this.res_notice = res_notice;
	}
	
	
	public restaurantDTO(String res_name, String res_tel, String res_location, String res_type,  String res_img ,String res_notice) {
		
		this.res_name = res_name;
		this.res_tel = res_tel;
		this.res_location = res_location;
		this.res_type = res_type;
		this.res_img = res_img;
		this.res_notice = res_notice;
	}

	public restaurantDTO(String res_name, String res_pw) {
		this.res_name = res_name;
		this.res_pw = res_pw;
	}

	public String getRes_name() {
		return res_name;
	}


	public String getRes_pw() {
		return res_pw;
	}


	public String getRes_tel() {
		return res_tel;
	}


	public String getRes_location() {
		return res_location;
	}


	public String getRes_type() {
		return res_type;
	}


	public String getRes_img() {
		return res_img;
	}


	public String getRes_notice() {
		return res_notice;
	}
	
	

	
}
