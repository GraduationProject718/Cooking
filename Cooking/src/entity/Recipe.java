package entity;

import java.io.Serializable;

public class Recipe implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int r_id;
	private String r_name;
	private String r_information;
	private String r_imgName;
	private String r_imgUrl;
	private String r_material;
	private String r_practice;
	private int r_click;
	private String r_time;
	private int r_UId;
	private int RBDId;
	public int getR_id() {
		return r_id;
	}
	public void setR_id(int r_id) {
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
	public String getR_imgName() {
		return r_imgName;
	}
	public void setR_imgName(String r_imgName) {
		this.r_imgName = r_imgName;
	}
	public String getR_imgUrl() {
		return r_imgUrl;
	}
	public void setR_imgUrl(String r_imgUrl) {
		this.r_imgUrl = r_imgUrl;
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
	public int getR_click() {
		return r_click;
	}
	public void setR_click(int r_click) {
		this.r_click = r_click;
	}
	public String getR_time() {
		return r_time;
	}
	public void setR_time(String r_time) {
		this.r_time = r_time;
	}
	public int getR_UId() {
		return r_UId;
	}
	public void setR_UId(int r_UId) {
		this.r_UId = r_UId;
	}
	public int getRBDId() {
		return RBDId;
	}
	public void setRBDId(int rBDId) {
		RBDId = rBDId;
	}
	
	
}
