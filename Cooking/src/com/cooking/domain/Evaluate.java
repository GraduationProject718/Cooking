package com.cooking.domain;

import java.util.Date;

public class Evaluate {
	private String e_id;
	private String e_content;
	private Date e_time;
	private String e_UId;
	private String e_RId;
	public String getE_id() {
		return e_id;
	}
	public void setE_id(String e_id) {
		this.e_id = e_id;
	}
	public String getE_content() {
		return e_content;
	}
	public void setE_content(String e_content) {
		this.e_content = e_content;
	}
	public Date getE_time() {
		return e_time;
	}
	public void setE_time(Date e_time) {
		this.e_time = e_time;
	}
	public String getE_UId() {
		return e_UId;
	}
	public void setE_UId(String e_UId) {
		this.e_UId = e_UId;
	}
	public String getE_RId() {
		return e_RId;
	}
	public void setE_RId(String e_RId) {
		this.e_RId = e_RId;
	}
	@Override
	public String toString() {
		return "Evaluate [e_id=" + e_id + ", e_content=" + e_content + ", e_UId=" + e_UId + ", e_RId=" + e_RId + "]";
	}
	public Evaluate(String e_id, String e_content, Date e_time, String e_UId, String e_RId) {
		super();
		this.e_id = e_id;
		this.e_content = e_content;
		this.e_time = e_time;
		this.e_UId = e_UId;
		this.e_RId = e_RId;
	}
	public Evaluate() {
	}
}
