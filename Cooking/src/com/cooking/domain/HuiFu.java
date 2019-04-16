package com.cooking.domain;

import java.util.Date;

public class HuiFu {
	private String id;
	private String e_id;
	private String u_id;
	private String content;
	private Date date;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getE_id() {
		return e_id;
	}
	public void setE_id(String e_id) {
		this.e_id = e_id;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public HuiFu(String id, String e_id, String u_id, String content, Date date) {
		super();
		this.id = id;
		this.e_id = e_id;
		this.u_id = u_id;
		this.content = content;
		this.date = date;
	}
	@Override
	public String toString() {
		return "HuiFu [id=" + id + ", e_id=" + e_id + ", u_id=" + u_id + ", content=" + content + ", date=" + date
				+ "]";
	}
	public HuiFu() {
	}
	
}
