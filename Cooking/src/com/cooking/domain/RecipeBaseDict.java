package com.cooking.domain;

public class RecipeBaseDict {
	private String rbd_id;
	private String rbd_parentId;
	private String rbd_name;
	
	public String getRbd_id() {
		return rbd_id;
	}
	public void setRbd_id(String rbd_id) {
		this.rbd_id = rbd_id;
	}
	public String getRbd_parentId() {
		return rbd_parentId;
	}
	public void setRbd_parentId(String rbd_parentId) {
		this.rbd_parentId = rbd_parentId;
	}
	public String getRbd_name() {
		return rbd_name;
	}
	public void setRbd_name(String rbd_name) {
		this.rbd_name = rbd_name;
	}
	@Override
	public String toString() {
		return "RecipeBaseDict [rbd_id=" + rbd_id + ", rbd_parentId=" + rbd_parentId + ", rbd_name=" + rbd_name + "]";
	}
	public RecipeBaseDict() {
		// TODO Auto-generated constructor stub
	}
	public RecipeBaseDict(String rbd_id, String rbd_parentId, String rbd_name) {
		super();
		this.rbd_id = rbd_id;
		this.rbd_parentId = rbd_parentId;
		this.rbd_name = rbd_name;
	}
	
}
