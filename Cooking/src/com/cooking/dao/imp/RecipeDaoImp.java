package com.cooking.dao.imp;

import org.apache.commons.dbutils.QueryRunner;

import com.cooking.dao.RecipeDao;
import com.cooking.domain.Recipe;
import com.cooking.utils.JDBCUtils;

public class RecipeDaoImp implements RecipeDao {

	@Override
	public void addRecipe(Recipe recipe) throws Exception {
		String sql = "insert into recipe values(?,?,?,?,?,?,?,?,?,?)";
		QueryRunner qr=new QueryRunner(JDBCUtils.getDataSource());
		Object[] params={recipe.getR_id(),recipe.getR_name(),recipe.getR_information(),recipe.getR_img(),recipe.getR_material(),recipe.getR_practice(),recipe.getR_click(),recipe.getR_time(),recipe.getR_UId(),recipe.getR_RBDId()};
		qr.update(sql,params);
	}

}
