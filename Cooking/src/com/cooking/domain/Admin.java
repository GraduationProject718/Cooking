package com.cooking.domain;

public class Admin {
	private String a_id;
	private String a_account;
	private String a_password;
	public String getA_id() {
		return a_id;
	}
	public void setA_id(String a_id) {
		this.a_id = a_id;
	}
	public String getA_account() {
		return a_account;
	}
	public void setA_account(String a_account) {
		this.a_account = a_account;
	}
	public String getA_password() {
		return a_password;
	}
	public void setA_password(String a_password) {
		this.a_password = a_password;
	}
	@Override
	public String toString() {
		return "Admin [a_id=" + a_id + ", a_account=" + a_account + ", a_password=" + a_password + "]";
	}
	public Admin(String a_id, String a_account, String a_password) {
		super();
		this.a_id = a_id;
		this.a_account = a_account;
		this.a_password = a_password;
	}
	public Admin() {
	}
}
