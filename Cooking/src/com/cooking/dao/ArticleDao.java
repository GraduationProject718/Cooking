package com.cooking.dao;

import java.util.List;

import com.cooking.domain.Article;

public interface ArticleDao {

	void addArticle(Article article) throws Exception;

	int findTotalRecords(String a_type)throws Exception;

	List<Article> getArticleBytype(int startIndex, int pageSize, String a_type) throws Exception;

	List<Article> getArticleByUId(String u_id) throws Exception;

	int findTotalRecordsByType(String a_type) throws Exception;

	List<Article> getList(String a_type, int startIndex, int pageSize) throws Exception;

	void delArticle(String a_id) throws Exception;

	Article editArticleById(String a_id) throws Exception;

	void editArticle(Article article) throws Exception;

	Article findArticleById(String a_id) throws Exception;

	List<Article> getGongGao() throws Exception;

}
