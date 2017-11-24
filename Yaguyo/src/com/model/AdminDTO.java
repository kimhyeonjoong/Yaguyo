package com.model;

public class AdminDTO {
	private String admin_id;
	private String admin_pw;
	
	public String getAdmin_id() {
		return admin_id;
	}
	public String getAdmin_pw() {
		return admin_pw;
	}
	public AdminDTO(String admin_id, String admin_pw) {
		this.admin_id = admin_id;
		this.admin_pw = admin_pw;
	}
	
	
}
