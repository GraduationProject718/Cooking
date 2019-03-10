package com.cooking.dao.imp;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;

import com.cooking.dao.UserDao;
import com.cooking.domain.User;
import com.cooking.utils.JDBCUtils;

public class UserDaoImp implements UserDao{
	@Override
	public User login(String u_account, String u_password) throws Exception {
		String sql = "select * from user where u_account = ? and u_password=?";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		return qr.query(sql, new BeanHandler<User>(User.class),u_account,u_password);

	}

	public void register(User u) throws Exception {
		String sql = "insert into user values(?,?,?,?,?,?,?,?,?,?)";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		Object[] params = {u.getU_id(),u.getU_account(),u.getU_password(),u.getU_nickname(),u.getU_phone(),u.getU_email(),u.getU_information(),u.getU_img(),u.getU_birthday(),u.getU_date()};
		qr.update(sql,params);
	}

}
