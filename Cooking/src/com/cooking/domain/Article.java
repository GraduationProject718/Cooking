package com.cooking.domain;

import java.util.Date;

public class Article {
	private String a_id;
	private String a_title;
	private String a_content;
	private Date a_time;
	private String a_UId;
	private String a_RBDId;
	public String getA_id() {
		return a_id;
	}
	public void setA_id(String a_id) {
		this.a_id = a_id;
	}
	public String getA_title() {
		return a_title;
	}
	public void setA_title(String a_title) {
		this.a_title = a_title;
	}
	public String getA_content() {
		return a_content;
	}
	public void setA_content(String a_content) {
		this.a_content = a_content;
	}
	public Date getA_time() {
		return a_time;
	}
	public void setA_time(Date a_time) {
		this.a_time = a_time;
	}
	public String getA_UId() {
		return a_UId;
	}
	public void setA_UId(String a_UId) {
		this.a_UId = a_UId;
	}
	public String getA_RBDId() {
		return a_RBDId;
	}
	public void setA_RBDId(String a_RBDId) {
		this.a_RBDId = a_RBDId;
	}
	public Article() {
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Article [a_id=" + a_id + ", a_title=" + a_title + ", a_content=" + a_content + ", a_time=" + a_time
				+ ", a_UId=" + a_UId + ", a_RBDId=" + a_RBDId + "]";
	}
	public Article(String a_id, String a_title, String a_content, Date a_time, String a_UId, String a_RBDId) {
		super();
		this.a_id = a_id;
		this.a_title = a_title;
		this.a_content = a_content;
		this.a_time = a_time;
		this.a_UId = a_UId;
		this.a_RBDId = a_RBDId;
	}
	
}
