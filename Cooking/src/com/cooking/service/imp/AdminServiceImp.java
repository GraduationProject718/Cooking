package com.cooking.service.imp;

import com.cooking.dao.AdminDao;
import com.cooking.dao.imp.AdminDaoImp;
import com.cooking.domain.Admin;
import com.cooking.service.AdminService;

public class AdminServiceImp implements AdminService {
	AdminDao adminDao = new AdminDaoImp();

	
	
	@Override
	public void edit(String a_id, String a_password) throws Exception {
		adminDao.edit(a_id,a_password);
	}



	@Override
	public Admin login(String a_account, String a_password) throws Exception {
		return adminDao.login(a_account,a_password);
	}
	
	
}
