package com.cooking.domain;

import java.util.Date;

public class Recipe {
	private String r_id;
	private String r_name;
	private String r_information;
	private String r_img;
	private String r_material;
	private String r_practice;
	private String r_click;
	private Date r_time;
	private String r_UId;
	private String r_RBDId;
	public String getR_id() {
		return r_id;
	}
	public void setR_id(String r_id) {
		this.r_id = r_id;
	}
	public String getR_name() {
		return r_name;
	}
	public void setR_name(String r_name) {
		this.r_name = r_name;
	}
	public String getR_information() {
		return r_information;
	}
	public void setR_information(String r_information) {
		this.r_information = r_information;
	}
	public String getR_img() {
		return r_img;
	}
	public void setR_img(String r_img) {
		this.r_img = r_img;
	}
	public String getR_material() {
		return r_material;
	}
	public void setR_material(String r_material) {
		this.r_material = r_material;
	}
	public String getR_practice() {
		return r_practice;
	}
	public void setR_practice(String r_practice) {
		this.r_practice = r_practice;
	}
	public String getR_click() {
		return r_click;
	}
	public void setR_click(String r_click) {
		this.r_click = r_click;
	}
	
	public Date getR_time() {
		return r_time;
	}
	public void setR_time(Date r_time) {
		this.r_time = r_time;
	}
	public String getR_UId() {
		return r_UId;
	}
	public void setR_UId(String r_UId) {
		this.r_UId = r_UId;
	}
	public String getR_RBDId() {
		return r_RBDId;
	}
	public void setR_RBDId(String r_RBDId) {
		this.r_RBDId = r_RBDId;
	}
	
	
	public Recipe(String r_id, String r_name, String r_information, String r_img, String r_material, String r_practice,
			String r_click, Date r_time, String r_UId, String r_RBDId) {
		super();
		this.r_id = r_id;
		this.r_name = r_name;
		this.r_information = r_information;
		this.r_img = r_img;
		this.r_material = r_material;
		this.r_practice = r_practice;
		this.r_click = r_click;
		this.r_time = r_time;
		this.r_UId = r_UId;
		this.r_RBDId = r_RBDId;
	}
	@Override
	public String toString() {
		return "Recipe [r_id=" + r_id + ", r_name=" + r_name + ", r_information=" + r_information + ", r_img=" + r_img
				+ ", r_material=" + r_material + ", r_practice=" + r_practice + ", r_click=" + r_click + ", r_time="
				+ r_time + ", r_UId=" + r_UId + ", r_RBDId=" + r_RBDId + "]";
	}
	public Recipe() {
	}
}
