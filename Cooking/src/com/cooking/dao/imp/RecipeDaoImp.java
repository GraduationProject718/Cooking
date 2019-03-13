package com.cooking.dao.imp;

import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import com.cooking.dao.RecipeDao;
import com.cooking.domain.Article;
import com.cooking.domain.Recipe;
import com.cooking.domain.RecipeBaseDict;
import com.cooking.domain.User;
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
	public void editRecipe(Recipe recipe) throws Exception {
		String sql="UPDATE recipe SET r_name=?, r_information=?, r_material=?, r_practice=?, r_RBDId=? WHERE r_id=?";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		Object[] params={recipe.getR_name(),recipe.getR_information(),recipe.getR_material(),recipe.getR_practice(),recipe.getR_RBDId(),recipe.getR_id()};
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
	public int findTotalRecordsByPage() throws Exception {
		String sql = "select count(*) from recipe";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		Long num = (Long)qr.query(sql, new ScalarHandler());
		return num.intValue();
	}

	@Override
	public List<Recipe> getRecipeByRBDId(int startIndex, int pageSize, String rbd_id) throws Exception {
		String sql = "select * from recipe where r_RBDId=? order by r_time desc limit ?,?";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		return qr.query(sql, new BeanListHandler<Recipe>(Recipe.class),rbd_id,startIndex,pageSize);
	}

	@Override
	public List<Recipe> findRecipeByPage(int startIndex, int pageSize) throws Exception {
		String sql = "select * from recipe  order by r_time desc limit ?,?";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		return qr.query(sql, new BeanListHandler<Recipe>(Recipe.class),startIndex,pageSize);

	}

	@Override
	public List<Recipe> getYinPin() throws Exception {
		String sql = "select * from recipe where r_RBDId=? order by r_time desc limit 0,6";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		return qr.query(sql, new BeanListHandler<Recipe>(Recipe.class),"3");

	}

	@Override
	public List<Recipe> getTianDian() throws Exception {
		String sql = "select * from recipe where r_RBDId=? order by r_time desc limit 0,6";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		return qr.query(sql, new BeanListHandler<Recipe>(Recipe.class),"4");
	}

	@Override
	public List<Recipe> getReMen() throws Exception {
		String sql = "select * from recipe order by r_click desc limit 0,3";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		return qr.query(sql, new BeanListHandler<Recipe>(Recipe.class));
	}

	@Override
	public List<Recipe> getZuiXin() throws Exception {
		String sql = "select * from recipe order by r_time desc limit 0,3";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		return qr.query(sql, new BeanListHandler<Recipe>(Recipe.class));
	}

	@Override
	public List<Recipe> getTuiJian() throws Exception {
		String sql = "select * from recipe order by r_id desc limit 0,3";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		return qr.query(sql, new BeanListHandler<Recipe>(Recipe.class));
	}

	@Override
	public List<Recipe> getZhongCan() throws Exception {
		String sql = "select * from recipe where r_RBDId=? or r_RBDId=? or r_RBDId=? or r_RBDId=? or r_RBDId=? or r_RBDId=? or r_RBDId=? or r_RBDId=? limit 0,6";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		return qr.query(sql, new BeanListHandler<Recipe>(Recipe.class),"5","6","7","8","9","10","11","12");
	}

	@Override
	public List<Recipe> getXiCan() throws Exception {
		String sql = "select * from recipe where r_RBDId=? or r_RBDId=? or r_RBDId=? or r_RBDId=? or r_RBDId=? limit 0,6";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		return qr.query(sql, new BeanListHandler<Recipe>(Recipe.class),"13","14","15","16","17");
	}

	@Override
	public List<Recipe> getRecipeByUId(String u_id) throws Exception {
		String sql = "select * from recipe where r_UId=?";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		return qr.query(sql, new BeanListHandler<Recipe>(Recipe.class),u_id);
	}

	@Override
	public Recipe findRecipeById(String r_id) throws Exception {
		String sql = "select * from recipe where r_id = ?";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		return qr.query(sql, new BeanHandler<Recipe>(Recipe.class),r_id);
	}



}
