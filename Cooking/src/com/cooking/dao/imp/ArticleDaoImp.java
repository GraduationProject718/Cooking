package com.cooking.dao.imp;

import org.apache.commons.dbutils.QueryRunner;

import com.cooking.dao.ArticleDao;
import com.cooking.domain.Article;
import com.cooking.utils.JDBCUtils;

public class ArticleDaoImp implements ArticleDao {

	@Override
	public void addArticle(Article article) throws Exception {
		String sql = "insert into article values(?,?,?,?,?,?,?)";
		QueryRunner qr=new QueryRunner(JDBCUtils.getDataSource());
		Object[] params={article.getA_id(),article.getA_title(),article.getA_content(),article.getA_time(),article.getA_img(),article.getA_UId(),article.getA_type()};
		qr.update(sql,params);
	}

}
