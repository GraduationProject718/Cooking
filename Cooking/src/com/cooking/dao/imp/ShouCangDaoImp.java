package com.cooking.dao.imp;

import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.cooking.dao.ShouCangDao;
import com.cooking.domain.ShouCang;
import com.cooking.utils.JDBCUtils;

public class ShouCangDaoImp implements ShouCangDao {

	
	
	@Override
	public List<ShouCang> getByUid(String u_id) throws Exception {
		String sql = "select * from shoucang where u_id=?";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		return qr.query(sql, new BeanListHandler<ShouCang>(ShouCang.class),u_id);
	}

	@Override
	public void add(ShouCang shoucang) throws Exception {
		String sql = "insert into shoucang values(?,?,?)";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		qr.update(sql,shoucang.getId(),shoucang.getU_id(),shoucang.getR_id());
	}

}
