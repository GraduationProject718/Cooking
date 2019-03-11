package com.cooking.dao.imp;

import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.cooking.dao.RecipeBaseDictDao;
import com.cooking.domain.RecipeBaseDict;
import com.cooking.utils.JDBCUtils;


public class RecipeBaseDictDaoImp implements RecipeBaseDictDao {

	@Override
	public List<RecipeBaseDict> getRBDAll() throws Exception {
		String sql = "select * from recipebasedict";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		return qr.query(sql, new BeanListHandler<RecipeBaseDict>(RecipeBaseDict.class));
	}

	

}
