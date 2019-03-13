package com.cooking.service;

import java.util.List;

import com.cooking.domain.Article;
import com.cooking.domain.PageModel;

public interface ArticleService {

	void addArticle(Article article) throws Exception;

	PageModel getArticleBytype(int curNum, String a_type) throws Exception;

	List<Article> getArticleByUId(String u_id) throws Exception;

	PageModel getList(String a_type, int curNum) throws Exception;

	void delArticle(String a_id) throws Exception;

	Article editArticleById(String a_id) throws Exception;

	void editArticle(Article article) throws Exception;

}
