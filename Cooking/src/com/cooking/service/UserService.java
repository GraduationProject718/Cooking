package com.cooking.service;

import com.cooking.domain.PageModel;
import com.cooking.domain.User;

public interface UserService {

	void register(User u) throws Exception;

	User login(String u_account, String u_password) throws Exception;

	PageModel findUserByPage(int curNum)  throws Exception;

	void del(String u_id) throws Exception;

	void editUser(User user) throws Exception;

	User getUserByUid(String u_id)throws Exception;

	void editPassword(String u_id, String u_password) throws Exception;

	void editImg(User user) throws Exception;

}
