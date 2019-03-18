package com.cooking.service.imp;

import java.util.List;

import com.cooking.dao.ArticleEvaluateDao;
import com.cooking.dao.imp.ArticleEvaluateDaoImp;
import com.cooking.domain.ArticleEvaluate;
import com.cooking.domain.Evaluate;
import com.cooking.domain.PageModel;
import com.cooking.service.ArticleEvaluateService;

public class ArticleEvaluateServiceImp implements ArticleEvaluateService {
	ArticleEvaluateDao articleEvaluateDao = new ArticleEvaluateDaoImp();

	@Override
	public void add(ArticleEvaluate articleEvaluate) throws Exception {
		articleEvaluateDao.add(articleEvaluate);
	}

	@Override
	public List<ArticleEvaluate> findArticleEvaluateById(String a_id) throws Exception {
		return articleEvaluateDao.findArticleEvaluateById(a_id);
	}

	@Override
	public PageModel findAllByAdmin(int curNum) throws Exception {
		int totalRecords =articleEvaluateDao.findTotalRecords();
		PageModel pm = new PageModel(curNum,totalRecords,5);
		List<ArticleEvaluate> list = articleEvaluateDao.findAllByAdmin(pm.getStartIndex(),pm.getPageSize());
		pm.setList(list);
		pm.setUrl("ArticleEvaluateServlet?method=findAllByAdmin");
		return pm;
	}

	@Override
	public void del(String ae_id) throws Exception {
		articleEvaluateDao.del(ae_id);
	}
	
	
}
