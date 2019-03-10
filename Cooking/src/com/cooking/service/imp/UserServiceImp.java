package com.cooking.service.imp;

import com.cooking.dao.UserDao;
import com.cooking.dao.imp.UserDaoImp;
import com.cooking.domain.User;
import com.cooking.service.UserService;

public class UserServiceImp implements UserService {
	@Override
	public User login(String u_account, String u_password) throws Exception {
		return uDao.login(u_account,u_password);
	}
	UserDao uDao = new UserDaoImp();
	@Override
	public void register(User u) throws Exception {
		uDao.register(u);
	}

}
