package com.cooking.dao;

import java.util.List;

import com.cooking.domain.User;

public interface UserDao {
	void register(User u) throws Exception;

	User login(String u_account, String u_password) throws Exception;

	int findTotalRecordsByPage()throws Exception;

	List<User> findUserByPage(int startIndex, int pageSize) throws Exception;

	void del(String u_id) throws Exception;

	void editUser(User user)throws Exception;

	User getUserByUid(String u_id) throws Exception;

	void editPassword(String u_id, String u_password)throws Exception;

	void editImg(User user)throws Exception;

}
