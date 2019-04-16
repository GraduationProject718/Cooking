package com.cooking.dao.imp;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import com.cooking.dao.AdminDao;
import com.cooking.domain.Admin;
import com.cooking.utils.JDBCUtils;

public class AdminDaoImp implements AdminDao {

	
	
	@Override
	public void edit(String a_id, String a_password) throws Exception {
		String sql = "update administrator set a_password=? where a_id=?";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		qr.update(sql,a_password,a_id);
	}

	@Override
	public Admin login(String a_account, String a_password) throws Exception {
		String sql = "select * from administrator where a_account=? and a_password=?";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		return qr.query(sql, new BeanHandler<Admin>(Admin.class),a_account,a_password);
	}
	
}
