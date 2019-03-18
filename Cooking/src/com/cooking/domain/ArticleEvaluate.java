package com.cooking.domain;

import java.util.Date;

public class ArticleEvaluate {
	private String ae_id;
	private String ae_content;
	private Date ae_time;
	private String ae_UId;
	private String ae_AId;
	public String getAe_id() {
		return ae_id;
	}
	public void setAe_id(String ae_id) {
		this.ae_id = ae_id;
	}
	public String getAe_content() {
		return ae_content;
	}
	public void setAe_content(String ae_content) {
		this.ae_content = ae_content;
	}
	public Date getAe_time() {
		return ae_time;
	}
	public void setAe_time(Date ae_time) {
		this.ae_time = ae_time;
	}
	public String getAe_UId() {
		return ae_UId;
	}
	public void setAe_UId(String ae_UId) {
		this.ae_UId = ae_UId;
	}
	public String getAe_AId() {
		return ae_AId;
	}
	public void setAe_AId(String ae_AId) {
		this.ae_AId = ae_AId;
	}
	@Override
	public String toString() {
		return "ArticleEvaluate [ae_id=" + ae_id + ", ae_content=" + ae_content + ", ae_time=" + ae_time + ", ae_UId="
				+ ae_UId + ", ae_AId=" + ae_AId + "]";
	}
	public ArticleEvaluate(String ae_id, String ae_content, Date ae_time, String ae_UId, String ae_AId) {
		super();
		this.ae_id = ae_id;
		this.ae_content = ae_content;
		this.ae_time = ae_time;
		this.ae_UId = ae_UId;
		this.ae_AId = ae_AId;
	}
	public ArticleEvaluate() {
	}
}
