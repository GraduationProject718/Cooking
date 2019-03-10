package com.cooking.servlet;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cooking.service.ArticleService;
import com.cooking.service.imp.ArticleServiceImp;

public class ArticleServlet extends BaseServlet {
	ArticleService aService = new ArticleServiceImp();
	
	public String addArticle(HttpServletRequest request, HttpServletResponse response) throws Exception {
		return null;
	}
	
	public String addArticlePage(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		return "addArticle.jsp";
	}
	
	public String findArticleById(HttpServletRequest request, HttpServletResponse response) throws Exception {
		return null;
	}
	
	public String findArticleByPage(HttpServletRequest request, HttpServletResponse response) throws Exception {
		return null;
	}
	
	public String editArticle(HttpServletRequest request, HttpServletResponse response) throws Exception {
		return null;
	}
	
	public String delArticle(HttpServletRequest request, HttpServletResponse response) throws Exception {
		return null;
	}
}
