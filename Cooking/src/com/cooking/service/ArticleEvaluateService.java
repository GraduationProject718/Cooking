package com.cooking.service;

import java.util.List;

import com.cooking.domain.ArticleEvaluate;
import com.cooking.domain.PageModel;

public interface ArticleEvaluateService {

	void add(ArticleEvaluate articleEvaluate) throws Exception;

	List<ArticleEvaluate> findArticleEvaluateById(String a_id) throws Exception;

	PageModel findAllByAdmin(int curNum)throws Exception;

	void del(String ae_id) throws Exception;

}
