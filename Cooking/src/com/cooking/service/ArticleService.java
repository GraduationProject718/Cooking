package com.cooking.service;

import java.util.List;

import com.cooking.domain.Article;
import com.cooking.domain.PageModel;

public interface ArticleService {

	void addArticle(Article article) throws Exception;

	PageModel getArticleBytype(int curNum, String a_type) throws Exception;

	List<Article> getArticleByUId(String u_id) throws Exception;

}
