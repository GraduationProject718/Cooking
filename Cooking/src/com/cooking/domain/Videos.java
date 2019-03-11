package com.cooking.domain;

public class Videos {
	private String  v_id;
	private String  v_name;
	private String  v_url;
	private String  v_UId;
	public String getV_id() {
		return v_id;
	}
	public void setV_id(String v_id) {
		this.v_id = v_id;
	}
	public String getV_name() {
		return v_name;
	}
	public void setV_name(String v_name) {
		this.v_name = v_name;
	}
	public String getV_url() {
		return v_url;
	}
	public void setV_url(String v_url) {
		this.v_url = v_url;
	}
	public String getV_UId() {
		return v_UId;
	}
	public void setV_UId(String v_UId) {
		this.v_UId = v_UId;
	}
	public Videos() {
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Videos [v_id=" + v_id + ", v_name=" + v_name + ", v_url=" + v_url + ", v_UId=" + v_UId + "]";
	}
	public Videos(String v_id, String v_name, String v_url, String v_UId) {
		super();
		this.v_id = v_id;
		this.v_name = v_name;
		this.v_url = v_url;
		this.v_UId = v_UId;
	}
}
