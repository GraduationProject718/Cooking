package com.cooking.service.imp;

import org.apache.commons.dbutils.QueryRunner;

import com.cooking.dao.ArticleDao;
import com.cooking.dao.imp.ArticleDaoImp;
import com.cooking.domain.Article;
import com.cooking.service.ArticleService;
import com.cooking.utils.JDBCUtils;


public class ArticleServiceImp implements ArticleService {
	ArticleDao aDao = new ArticleDaoImp();
	@Override
	public void addArticle(Article article) throws Exception {
		aDao.addArticle(article);
		
	}

}
