package com.cooking.dao;

import java.util.List;

import com.cooking.domain.Recipe;

public interface RecipeDao {

	void addRecipe(Recipe recipe) throws Exception;

	int findTotalRecords(String rbd_id) throws Exception;

	List<Recipe> getRecipeByRBDId(int startIndex, int pageSize, String rbd_id) throws Exception;

}
