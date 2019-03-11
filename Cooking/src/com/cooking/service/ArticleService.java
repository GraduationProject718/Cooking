package com.cooking.service;

import com.cooking.domain.Article;
import com.cooking.domain.PageModel;

public interface ArticleService {

	void addArticle(Article article) throws Exception;

	PageModel getArticleBytype(int curNum, String a_type) throws Exception;

}
