package com.cooking.service;

import com.cooking.domain.User;

public interface UserService {

	void register(User u) throws Exception;

	User login(String u_account, String u_password) throws Exception;

}
