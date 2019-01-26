package service;

import java.util.ArrayList;

import javax.servlet.jsp.jstl.sql.Result;

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
	public ArrayList<Article> findArticle(int start, int end) {
		ArrayList<Article> article = new ArrayList<Article>();
		String sql = "select * from article order by a_time,a_id desc limit "+start+","+end;
		/*String sql = "select * from article order by a_time,a_id desc ";*/
		Result result = dao.getList(sql);
		Object[][] data = result.getRowsByIndex();
		for(int i=0; i<data.length; i++){
			Article a = new Article();
			a.setA_id(Integer.valueOf(data[i][0].toString()));
			a.setA_title(data[i][1].toString());
			a.setA_content(data[i][2].toString());
			a.setA_time(data[i][3].toString());
			a.setA_UId(Integer.valueOf(data[i][4].toString()));
			a.setA_RBDId(Integer.valueOf(data[i][5].toString()));
			article.add(a);
		}
		return article;
	}
}
