package com.cooking.service;

import java.util.List;

import com.cooking.domain.Article;
import com.cooking.domain.PageModel;
import com.cooking.domain.Recipe;

public interface RecipeService {

	void addRecipe(Recipe recipe) throws Exception;

	PageModel getRecipeByRBDId(int curNum, String rbd_id) throws Exception;

	List<Recipe> getYinPin() throws Exception;

	List<Recipe> getTianDian()throws Exception;

	List<Recipe> getReMen() throws Exception;

	List<Recipe> getZuiXin()throws Exception;

	List<Recipe> getTuiJian() throws Exception;

	List<Recipe> getZhongCan() throws Exception;

	List<Recipe> getXiCan() throws Exception;

	List<Recipe> getRecipeByUId(String u_id) throws Exception;

	Recipe findRecipeById(String r_id) throws Exception;



}
