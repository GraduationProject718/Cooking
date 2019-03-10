package com.cooking.dao;

import com.cooking.domain.User;

public interface UserDao {
	void register(User u) throws Exception;

	User login(String u_account, String u_password) throws Exception;

}
