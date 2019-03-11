package com.cooking.service.imp;

import java.util.List;

import com.cooking.dao.RecipeBaseDictDao;
import com.cooking.dao.imp.RecipeBaseDictDaoImp;
import com.cooking.domain.RecipeBaseDict;
import com.cooking.service.RecipeBaseDictService;

public class RecipeBaseDictServiceImp implements RecipeBaseDictService {
	RecipeBaseDictDao rbdDao = new RecipeBaseDictDaoImp();

	@Override
	public List<RecipeBaseDict> getRBDAll() throws Exception {
		return rbdDao.getRBDAll();
	}
	
}
