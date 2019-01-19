package entity;

import java.io.Serializable;

public class RecipeBaseDict implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int rbd_id;
	private int rbd_parentId;
	private String rbd_name;
	public int getRbd_id() {
		return rbd_id;
	}
	public void setRbd_id(int rbd_id) {
		this.rbd_id = rbd_id;
	}
	public int getRbd_parentId() {
		return rbd_parentId;
	}
	public void setRbd_parentId(int rbd_parentId) {
		this.rbd_parentId = rbd_parentId;
	}
	public String getRbd_name() {
		return rbd_name;
	}
	public void setRbd_name(String rbd_name) {
		this.rbd_name = rbd_name;
	}
	
}
