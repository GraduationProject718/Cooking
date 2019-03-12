package com.cooking.dao;

import java.util.List;

import com.cooking.domain.Article;

public interface ArticleDao {

	void addArticle(Article article) throws Exception;

	int findTotalRecords(String a_type)throws Exception;

	List<Article> getArticleBytype(int startIndex, int pageSize, String a_type) throws Exception;

	List<Article> getArticleByUId(String u_id) throws Exception;

}
