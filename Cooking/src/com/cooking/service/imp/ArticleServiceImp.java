package com.cooking.service.imp;

import java.util.List;

import org.apache.commons.dbutils.QueryRunner;

import com.cooking.dao.ArticleDao;
import com.cooking.dao.imp.ArticleDaoImp;
import com.cooking.domain.Article;
import com.cooking.domain.PageModel;
import com.cooking.domain.Recipe;
import com.cooking.service.ArticleService;
import com.cooking.utils.JDBCUtils;


public class ArticleServiceImp implements ArticleService {
	ArticleDao aDao = new ArticleDaoImp();
	@Override
	public void addArticle(Article article) throws Exception {
		aDao.addArticle(article);
		
	}
	@Override
	public PageModel getArticleBytype(int curNum, String a_type) throws Exception {
		int totalRecords =aDao.findTotalRecords(a_type);
		PageModel pm = new PageModel(curNum,totalRecords,5);
		List<Article> list = aDao.getArticleBytype(pm.getStartIndex(),pm.getPageSize(),a_type);
		pm.setList(list);
		pm.setUrl("ArticleServlet?method=getArticleBytype&type="+a_type);
		return pm;
	}
	@Override
	public List<Article> getArticleByUId(String u_id) throws Exception {
		return aDao.getArticleByUId(u_id);
	}

	
}
