package com.cooking.service.imp;

import java.util.List;

import com.cooking.dao.RecipeDao;
import com.cooking.dao.imp.RecipeDaoImp;
import com.cooking.domain.Article;
import com.cooking.domain.PageModel;
import com.cooking.domain.Recipe;
import com.cooking.service.RecipeService;


public class RecipeServiceImp implements RecipeService {
	RecipeDao rDao = new RecipeDaoImp();
	@Override
	public void addRecipe(Recipe recipe) throws Exception {
		rDao.addRecipe(recipe);
	}
	@Override
	public PageModel getRecipeByRBDId(int curNum, String rbd_id) throws Exception {
		int totalRecords =rDao.findTotalRecords(rbd_id);
		PageModel pm = new PageModel(curNum,totalRecords,5);
		List<Recipe> list = rDao.getRecipeByRBDId(pm.getStartIndex(),pm.getPageSize(),rbd_id);
		pm.setList(list);
		pm.setUrl("RecipeServlet?method=getRecipeByRBDId&rbd_id="+rbd_id);
		return pm;	
	}
	@Override
	public List<Recipe> getYinPin() throws Exception {
		return rDao.getYinPin();
	}
	@Override
	public List<Recipe> getTianDian() throws Exception {
		return rDao.getTianDian();
	}
	@Override
	public List<Recipe> getReMen() throws Exception {
		return rDao.getReMen();
	}
	@Override
	public List<Recipe> getZuiXin() throws Exception {
		return rDao.getZuiXin();
	}
	@Override
	public List<Recipe> getTuiJian() throws Exception {
		return rDao.getTuiJian();
	}
	@Override
	public List<Recipe> getZhongCan() throws Exception {
		return rDao.getZhongCan();
	}
	@Override
	public List<Recipe> getXiCan() throws Exception {
		return rDao.getXiCan();
	}
	@Override
	public List<Recipe> getRecipeByUId(String u_id) throws Exception {
		return rDao.getRecipeByUId(u_id);
	}
	@Override
	public Recipe findRecipeById(String r_id) throws Exception {
		return rDao.findRecipeById(r_id);
	}

	

}
