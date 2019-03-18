package com.cooking.dao.imp;

import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import com.cooking.dao.ArticleEvaluateDao;
import com.cooking.domain.ArticleEvaluate;
import com.cooking.domain.Evaluate;
import com.cooking.utils.JDBCUtils;

public class ArticleEvaluateDaoImp implements ArticleEvaluateDao {

	@Override
	public void add(ArticleEvaluate articleEvaluate) throws Exception {
		String sql = "insert into articleevaluate values(?,?,?,?,?)";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		Object[] params = {articleEvaluate.getAe_id(),articleEvaluate.getAe_content(),articleEvaluate.getAe_time(),articleEvaluate.getAe_UId(),articleEvaluate.getAe_AId()};
		qr.update(sql,params);
	}

	@Override
	public List<ArticleEvaluate> findArticleEvaluateById(String a_id) throws Exception {
		String sql = "select * from articleevaluate where ae_AId=?";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		return qr.query(sql, new BeanListHandler<ArticleEvaluate>(ArticleEvaluate.class),a_id);
	}

	@Override
	public int findTotalRecords() throws Exception {
		String sql = "select count(*) from articleevaluate";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		Long num = (Long)qr.query(sql, new ScalarHandler());
		return num.intValue();
	}

	@Override
	public List<ArticleEvaluate> findAllByAdmin(int startIndex, int pageSize) throws Exception {
		String sql = "select * from articleevaluate order by ae_time desc limit ?,?";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		return qr.query(sql, new BeanListHandler<ArticleEvaluate>(ArticleEvaluate.class),startIndex,pageSize);
	}

	@Override
	public void del(String ae_id) throws Exception {
		String sql = "delete from articleevaluate where ae_id=?";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		qr.update(sql,ae_id);
	}

	
	
}
