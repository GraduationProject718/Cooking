package entity;

import java.io.Serializable;

public class Videos implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private int v_id;
	private String v_name;
	private String v_url;
	private int v_UId;
	private int RBDId;
	public int getV_id() {
		return v_id;
	}
	public void setV_id(int v_id) {
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
	public int getV_UId() {
		return v_UId;
	}
	public void setV_UId(int v_UId) {
		this.v_UId = v_UId;
	}
	public int getRBDId() {
		return RBDId;
	}
	public void setRBDId(int rBDId) {
		RBDId = rBDId;
	}
	
}
