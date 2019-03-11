package com.cooking.service.imp;

import java.util.List;

import com.cooking.dao.RecipeDao;
import com.cooking.dao.imp.RecipeDaoImp;
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

}
