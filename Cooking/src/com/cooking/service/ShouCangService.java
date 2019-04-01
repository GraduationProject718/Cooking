package com.cooking.service;

import java.util.List;

import com.cooking.domain.ShouCang;

public interface ShouCangService {

	void add(ShouCang shoucang) throws Exception;

	List<ShouCang> getByUid(String u_id) throws Exception;

}
