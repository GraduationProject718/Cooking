package com.cooking.service.imp;

import java.util.List;

import com.cooking.dao.EvaluateDao;
import com.cooking.dao.imp.EvaluateDaoImp;
import com.cooking.domain.Article;
import com.cooking.domain.Evaluate;
import com.cooking.domain.PageModel;
import com.cooking.service.EvaluateService;

public class EvaluateServiceImp implements EvaluateService {
	EvaluateDao evaluateDao = new EvaluateDaoImp();

	@Override
	public void add(Evaluate evaluate) throws Exception {
		evaluateDao.add(evaluate);
	}

	@Override
	public List<Evaluate> findEvaluateByRId(String r_id) throws Exception {
		return evaluateDao.findEvaluateByRId(r_id);
	}

	@Override
	public PageModel findAllByAdmin(int curNum) throws Exception {
		int totalRecords =evaluateDao.findTotalRecords();
		PageModel pm = new PageModel(curNum,totalRecords,5);
		List<Evaluate> list = evaluateDao.findAllByAdmin(pm.getStartIndex(),pm.getPageSize());
		pm.setList(list);
		pm.setUrl("EvaluateServlet?method=findAllByAdmin");
		return pm;
	}

	@Override
	public void del(String e_id) throws Exception {
		evaluateDao.del(e_id);
	}
	
	
}
