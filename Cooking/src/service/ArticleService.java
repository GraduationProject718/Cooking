package service;

import dao.Dao;
import entity.Article;

public class ArticleService {
	Dao dao = new Dao();
	public boolean addLogin(Article article) {
		String sql = "insert into article(a_title,a_content,a_time,a_UId,a_RBDId) "
				+ "value('"+article.getA_title()+"','"+article.getA_content()+"','"+article.getA_time()+"','"+article.getA_UId()+"','"+article.getA_RBDId()+"')";
		if(dao.update(sql)>0){
			return true;
		}
		return false;
	}

}
