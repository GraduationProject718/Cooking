package service;

import java.util.ArrayList;

import javax.servlet.jsp.jstl.sql.Result;

import dao.Dao;
import entity.RecipeBaseDict;

public class RecipeBaseDictService {
	Dao dao = new Dao();
	public ArrayList<RecipeBaseDict> findAll() {
		ArrayList<RecipeBaseDict> recipeBaseDict = new ArrayList<RecipeBaseDict>();
		String sql = "select * from recipebasedict";
		Result result = dao.getList(sql);
		Object[][] data = result.getRowsByIndex();
		for(int i=0; i<data.length; i++){
			RecipeBaseDict r = new RecipeBaseDict();
			r.setRbd_id(Integer.valueOf(data[i][0].toString()));
			r.setRbd_parentId(Integer.valueOf(data[i][1].toString()));
			r.setRbd_name(data[i][2].toString());
			recipeBaseDict.add(r);
		}
		return recipeBaseDict;
	}

}
