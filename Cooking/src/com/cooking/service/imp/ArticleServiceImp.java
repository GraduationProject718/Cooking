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
	public void editArticle(Article article) throws Exception {
		aDao.editArticle(article);
	}

	@Override
	public Article editArticleById(String a_id) throws Exception {
		return aDao.editArticleById(a_id);
	}

	@Override
	public void delArticle(String a_id) throws Exception {
		aDao.delArticle(a_id);
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
	@Override
	public PageModel getList(String a_type, int curNum) throws Exception {
		int totalRecords =aDao.findTotalRecordsByType(a_type);
		PageModel pm = new PageModel(curNum,totalRecords,5);
		List<Article> list = aDao.getList(a_type,pm.getStartIndex(),pm.getPageSize());
		pm.setList(list);
		pm.setUrl("ArticleServlet?method=findArticleByPage&type="+a_type);
		return pm;
	}

	
}
