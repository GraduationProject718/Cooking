package com.cooking.dao.imp;

import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import com.cooking.dao.EvaluateDao;
import com.cooking.domain.Article;
import com.cooking.domain.Evaluate;
import com.cooking.utils.JDBCUtils;

public class EvaluateDaoImp implements EvaluateDao {

	@Override
	public void add(Evaluate evaluate) throws Exception {
		String sql = "insert into evaluate values(?,?,?,?,?)";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		Object[] params = {evaluate.getE_id(),evaluate.getE_content(),evaluate.getE_time(),evaluate.getE_UId(),evaluate.getE_RId()};
		qr.update(sql,params);
	}

	@Override
	public List<Evaluate> findEvaluateByRId(String r_id) throws Exception {
		String sql = "select * from evaluate where e_RId=?";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		return qr.query(sql, new BeanListHandler<Evaluate>(Evaluate.class),r_id);
	}

	@Override
	public int findTotalRecords() throws Exception{
		String sql = "select count(*) from evaluate";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		Long num = (Long)qr.query(sql, new ScalarHandler());
		return num.intValue();
	}

	@Override
	public List<Evaluate> findAllByAdmin(int startIndex, int pageSize) throws Exception {
		String sql = "select * from evaluate order by e_time desc limit ?,?";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		return qr.query(sql, new BeanListHandler<Evaluate>(Evaluate.class),startIndex,pageSize);
	}

	@Override
	public void del(String e_id) throws Exception {
		String sql = "delete from evaluate where e_id=?";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		qr.update(sql,e_id);
	}

	
	
}
