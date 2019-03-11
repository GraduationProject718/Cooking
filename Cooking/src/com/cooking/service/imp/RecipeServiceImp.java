package com.cooking.service.imp;

import com.cooking.dao.RecipeDao;
import com.cooking.dao.imp.RecipeDaoImp;
import com.cooking.domain.Recipe;
import com.cooking.service.RecipeService;

public class RecipeServiceImp implements RecipeService {
	RecipeDao rDao = new RecipeDaoImp();
	@Override
	public void addRecipe(Recipe recipe) throws Exception {
		rDao.addRecipe(recipe);
	}

}
