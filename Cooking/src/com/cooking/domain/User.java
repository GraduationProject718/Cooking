package com.cooking.domain;

import java.util.Date;

public class User {
	private String u_id;
	private String u_account;
	private String u_password;
	private String u_nickname;
	private String u_phone;
	private String u_email;
	private String u_information;
	private String u_img;
	private String u_birthday;
	private Date u_date;
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public String getU_account() {
		return u_account;
	}
	public void setU_account(String u_account) {
		this.u_account = u_account;
	}
	public String getU_password() {
		return u_password;
	}
	public void setU_password(String u_password) {
		this.u_password = u_password;
	}
	public String getU_nickname() {
		return u_nickname;
	}
	public void setU_nickname(String u_nickname) {
		this.u_nickname = u_nickname;
	}
	public String getU_phone() {
		return u_phone;
	}
	public void setU_phone(String u_phone) {
		this.u_phone = u_phone;
	}
	public String getU_email() {
		return u_email;
	}
	public void setU_email(String u_email) {
		this.u_email = u_email;
	}
	public String getU_information() {
		return u_information;
	}
	public void setU_information(String u_information) {
		this.u_information = u_information;
	}
	public String getU_img() {
		return u_img;
	}
	public void setU_img(String u_img) {
		this.u_img = u_img;
	}
	public String getU_birthday() {
		return u_birthday;
	}
	public void setU_birthday(String u_birthday) {
		this.u_birthday = u_birthday;
	}
	
	public Date getU_date() {
		return u_date;
	}
	public void setU_date(Date u_date) {
		this.u_date = u_date;
	}
	public User() {
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "User [u_id=" + u_id + ", u_account=" + u_account + ", u_password=" + u_password + ", u_nickname="
				+ u_nickname + ", u_phone=" + u_phone + ", u_email=" + u_email + ", u_information=" + u_information
				+ ", u_img=" + u_img + ", u_birthday=" + u_birthday + ", u_date=" + u_date + "]";
	}
	public User(String u_id, String u_account, String u_password, String u_nickname, String u_phone, String u_email,
			String u_information, String u_img, String u_birthday, Date u_date) {
		super();
		this.u_id = u_id;
		this.u_account = u_account;
		this.u_password = u_password;
		this.u_nickname = u_nickname;
		this.u_phone = u_phone;
		this.u_email = u_email;
		this.u_information = u_information;
		this.u_img = u_img;
		this.u_birthday = u_birthday;
		this.u_date = u_date;
	}
	
}
