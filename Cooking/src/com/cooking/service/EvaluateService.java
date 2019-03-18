package com.cooking.service;

import java.util.List;

import com.cooking.domain.Evaluate;
import com.cooking.domain.PageModel;

public interface EvaluateService {

	void add(Evaluate evaluate) throws Exception;

	List<Evaluate> findEvaluateByRId(String r_id) throws Exception;

	PageModel findAllByAdmin(int curNum) throws Exception;

	void del(String e_id) throws Exception;

}
