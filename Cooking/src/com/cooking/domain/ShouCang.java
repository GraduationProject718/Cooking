package com.cooking.domain;

public class ShouCang {
	private String id;
	private String u_id;
	private String r_id;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public String getR_id() {
		return r_id;
	}
	public void setR_id(String r_id) {
		this.r_id = r_id;
	}
	public ShouCang() {
	}
	public ShouCang(String id, String u_id, String r_id) {
		super();
		this.id = id;
		this.u_id = u_id;
		this.r_id = r_id;
	}
	@Override
	public String toString() {
		return "ShouCang [id=" + id + ", u_id=" + u_id + ", r_id=" + r_id + "]";
	}
	
}
