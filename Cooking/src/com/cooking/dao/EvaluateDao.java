package com.cooking.dao;

import java.util.List;

import com.cooking.domain.Evaluate;

public interface EvaluateDao {

	void add(Evaluate evaluate) throws Exception;

	List<Evaluate> findEvaluateByRId(String r_id)throws Exception;

	int findTotalRecords() throws Exception;

	List<Evaluate> findAllByAdmin(int startIndex, int pageSize)throws Exception;

	void del(String e_id) throws Exception;


}
