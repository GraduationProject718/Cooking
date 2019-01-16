package service;

import dao.Dao;

public class AdministratorService {
	Dao dao = new Dao();
	public boolean login(String a_account, String a_password) {
		String sql = "select * from administrator where a_account='"+a_account+"'and a_password='"+a_password+"'";
		if(dao.getData(sql)>0){
			return true;
		}
		return false;
	}

}
