package com.cooking.service;

import com.cooking.domain.PageModel;
import com.cooking.domain.Recipe;

public interface RecipeService {

	void addRecipe(Recipe recipe) throws Exception;

	PageModel getRecipeByRBDId(int curNum, String rbd_id) throws Exception;

}
