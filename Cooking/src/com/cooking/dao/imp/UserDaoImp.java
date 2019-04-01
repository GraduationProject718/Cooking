package com.cooking.dao.imp;

import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import com.cooking.dao.UserDao;
import com.cooking.domain.Recipe;
import com.cooking.domain.User;
import com.cooking.utils.JDBCUtils;

public class UserDaoImp implements UserDao{
	
	
	
	@Override
	public void editImg(User user) throws Exception {
		String sql = "update user set u_img=? where u_id=?";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		qr.update(sql,user.getU_img(),user.getU_id());
	}

	@Override
	public void editPassword(String u_id, String u_password) throws Exception {
		String sql = "update user set u_password=? where u_id=?";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		qr.update(sql,u_password,u_id);
	}

	@Override
	public User getUserByUid(String u_id) throws Exception {
		String sql = "select * from user where u_id=?";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		return qr.query(sql, new BeanHandler<User>(User.class),u_id);
	}

	@Override
	public void editUser(User user) throws Exception {
		String sql = "update user set u_nickname=?, u_phone=?, u_email=?, u_birthday=?, u_information=? where u_id=?";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		Object[] params = {user.getU_nickname(),user.getU_phone(),user.getU_email(),user.getU_birthday(),user.getU_information(),user.getU_id()};
		qr.update(sql,params);
	}

	@Override
	public void del(String u_id) throws Exception {
		String sql = "delete from user where u_id=?";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		qr.update(sql,u_id);
	}

	@Override
	public List<User> findUserByPage(int startIndex, int pageSize) throws Exception {
		String sql = "select * from user order by u_date desc limit ?,?";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		return qr.query(sql, new BeanListHandler<User>(User.class),startIndex,pageSize);
	}

	@Override
	public int findTotalRecordsByPage() throws Exception {
		String sql = "select count(*) from user";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		Long num = (Long)qr.query(sql, new ScalarHandler());
		return num.intValue();
	}

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
