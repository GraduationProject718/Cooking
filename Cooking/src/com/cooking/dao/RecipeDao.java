package com.cooking.dao;

import java.util.List;

import com.cooking.domain.Article;
import com.cooking.domain.Recipe;

public interface RecipeDao {

	void addRecipe(Recipe recipe) throws Exception;

	int findTotalRecords(String rbd_id) throws Exception;

	List<Recipe> getRecipeByRBDId(int startIndex, int pageSize, String rbd_id) throws Exception;

	List<Recipe> getYinPin() throws Exception;

	List<Recipe> getTianDian() throws Exception;

	List<Recipe> getReMen() throws Exception;

	List<Recipe> getZuiXin() throws Exception;

	List<Recipe> getTuiJian()throws Exception;

	List<Recipe> getZhongCan() throws Exception;

	List<Recipe> getXiCan() throws Exception;

	List<Recipe> getRecipeByUId(String u_id) throws Exception;

	Recipe findRecipeById(String r_id) throws Exception;

	int findTotalRecordsByPage() throws Exception;

	List<Recipe> findRecipeByPage(int startIndex, int pageSize)throws Exception;

	void editRecipe(Recipe recipe) throws Exception;

	

}
