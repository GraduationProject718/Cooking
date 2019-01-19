package service;

import dao.Dao;
import entity.Recipe;

public class RecipeService {
	Dao dao = new Dao();
	public boolean addRecipe(Recipe recipe) {
		String sql = "insert into recipe(r_name,r_information,r_imgName,r_imgUrl,r_material,r_practice,r_click,r_time,r_UId,r_RBDId)"
				+ " value('"+recipe.getR_name()+"','"+recipe.getR_information()+"','"+recipe.getR_imgName()+"','"+recipe.getR_imgUrl()+"','"+recipe.getR_material()+"','"+recipe.getR_practice()+"','"+recipe.getR_click()+"','"+recipe.getR_time()+"','"+recipe.getR_UId()+"','"+recipe.getRBDId()+"')";
		if(dao.update(sql)>0){
			return true;
		}	
		return false;
	}

}
