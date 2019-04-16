package com.cooking.service;

import com.cooking.domain.Admin;

public interface AdminService {

	Admin login(String a_account, String a_password) throws Exception;

	void edit(String a_id, String a_password)throws Exception;

}
