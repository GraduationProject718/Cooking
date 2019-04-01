package com.cooking.service.imp;

import java.util.List;

import com.cooking.dao.ShouCangDao;
import com.cooking.dao.imp.ShouCangDaoImp;
import com.cooking.domain.ShouCang;
import com.cooking.service.ShouCangService;

public class ShouCangServiceImp implements ShouCangService {
	ShouCangDao scDao = new ShouCangDaoImp();

	
	
	@Override
	public List<ShouCang> getByUid(String u_id) throws Exception {
		return scDao.getByUid(u_id);
	}

	@Override
	public void add(ShouCang shoucang) throws Exception {
		scDao.add(shoucang);
	}
	
}
