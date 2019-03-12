package com.cooking.dao.imp;

import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import com.cooking.dao.ArticleDao;
import com.cooking.domain.Article;
import com.cooking.domain.Recipe;
import com.cooking.utils.JDBCUtils;

public class ArticleDaoImp implements ArticleDao {

	@Override
	public void addArticle(Article article) throws Exception {
		String sql = "insert into article values(?,?,?,?,?,?,?)";
		QueryRunner qr=new QueryRunner(JDBCUtils.getDataSource());
		Object[] params={article.getA_id(),article.getA_title(),article.getA_content(),article.getA_time(),article.getA_img(),article.getA_UId(),article.getA_type()};
		qr.update(sql,params);
	}

	@Override
	public int findTotalRecords(String a_type) throws Exception {
		String sql = "select count(*) from article where a_type=?";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		Long num = (Long)qr.query(sql, new ScalarHandler(),a_type);
		return num.intValue();
	}

	@Override
	public List<Article> getArticleBytype(int startIndex, int pageSize, String a_type) throws Exception {
		String sql = "select * from article where a_type=? order by a_time desc limit ?,?";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		return qr.query(sql, new BeanListHandler<Article>(Article.class),a_type,startIndex,pageSize);

	}

	@Override
	public List<Article> getArticleByUId(String u_id) throws Exception {
		String sql = "select * from article where a_UId=? ";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		return qr.query(sql, new BeanListHandler<Article>(Article.class),u_id);
	}

}
