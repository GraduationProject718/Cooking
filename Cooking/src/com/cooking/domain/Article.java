package com.cooking.domain;

import java.util.Date;

public class Article {
	private String a_id;
	private String a_title;
	private String a_content;
	private String a_time;
	private String a_img;
	private String a_UId;
	private String a_type;
	
	public String getA_img() {
		return a_img;
	}
	public void setA_img(String a_img) {
		this.a_img = a_img;
	}
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
	
	public String getA_UId() {
		return a_UId;
	}
	public void setA_UId(String a_UId) {
		this.a_UId = a_UId;
	}
	
	public String getA_type() {
		return a_type;
	}
	public void setA_type(String a_type) {
		this.a_type = a_type;
	}
	public String getA_time() {
		return a_time;
	}
	public void setA_time(String a_time) {
		this.a_time = a_time;
	}
	public Article() {
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Article [a_id=" + a_id + ", a_title=" + a_title + ", a_content=" + a_content + ", a_time=" + a_time
				+ ", a_img=" + a_img + ", a_UId=" + a_UId + ", a_type=" + a_type + "]";
	}
	public Article(String a_id, String a_title, String a_content, String a_time, String a_img, String a_UId,
			String a_type) {
		super();
		this.a_id = a_id;
		this.a_title = a_title;
		this.a_content = a_content;
		this.a_time = a_time;
		this.a_img = a_img;
		this.a_UId = a_UId;
		this.a_type = a_type;
	}
	
	
}
