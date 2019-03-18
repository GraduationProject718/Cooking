package com.cooking.dao;

import java.util.List;

import com.cooking.domain.ArticleEvaluate;

public interface ArticleEvaluateDao {

	void add(ArticleEvaluate articleEvaluate) throws Exception;

	List<ArticleEvaluate> findArticleEvaluateById(String a_id) throws Exception;

	int findTotalRecords()throws Exception;

	List<ArticleEvaluate> findAllByAdmin(int startIndex, int pageSize) throws Exception;

	void del(String ae_id) throws Exception;

}
