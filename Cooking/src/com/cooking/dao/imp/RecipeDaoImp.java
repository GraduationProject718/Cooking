package com.cooking.dao.imp;

import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

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

	@Override
	public int findTotalRecords(String rbd_id) throws Exception{
		String sql = "select count(*) from recipe where r_RBDId=?";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		Long num = (Long)qr.query(sql, new ScalarHandler(),rbd_id);
		return num.intValue();
	}

	@Override
	public List<Recipe> getRecipeByRBDId(int startIndex, int pageSize, String rbd_id) throws Exception {
		String sql = "select * from recipe where r_RBDId=? order by r_time desc limit ?,?";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		return qr.query(sql, new BeanListHandler<Recipe>(Recipe.class),rbd_id,startIndex,pageSize);
	}

}
