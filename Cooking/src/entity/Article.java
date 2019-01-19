package entity;

import java.io.Serializable;

public class Article implements Serializable{
	private int a_id;
	private String a_title;
	private String a_content;
	private String a_time;
	private int a_UId;
	private int a_RBDId;
	public int getA_id() {
		return a_id;
	}
	public void setA_id(int a_id) {
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
	public String getA_time() {
		return a_time;
	}
	public void setA_time(String a_time) {
		this.a_time = a_time;
	}
	public int getA_UId() {
		return a_UId;
	}
	public void setA_UId(int a_UId) {
		this.a_UId = a_UId;
	}
	public int getA_RBDId() {
		return a_RBDId;
	}
	public void setA_RBDId(int a_RBDId) {
		this.a_RBDId = a_RBDId;
	}
	
	
}
