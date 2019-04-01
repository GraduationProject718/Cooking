package com.cooking.dao;

import java.util.List;

import com.cooking.domain.ShouCang;

public interface ShouCangDao {

	void add(ShouCang shoucang) throws Exception;

	List<ShouCang> getByUid(String u_id)  throws Exception;

}
