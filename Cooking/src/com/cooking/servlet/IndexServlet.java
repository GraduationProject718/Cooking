package com.cooking.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cooking.domain.Article;
import com.cooking.domain.Recipe;
import com.cooking.domain.RecipeBaseDict;
import com.cooking.service.ArticleService;
import com.cooking.service.RecipeService;
import com.cooking.service.imp.ArticleServiceImp;
import com.cooking.service.imp.RecipeServiceImp;

public class IndexServlet extends BaseServlet {
	public String execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		RecipeService rService = new RecipeServiceImp();
		List<Recipe> yinpin = rService.getYinPin();
		request.setAttribute("yinpin", yinpin);
		List<Recipe> tiandian = rService.getTianDian();
		request.setAttribute("tiandian", tiandian);
		List<Recipe> remen = rService.getReMen();
		request.setAttribute("remen", remen);
		List<Recipe> zuixin = rService.getZuiXin();
		request.setAttribute("zuixin", zuixin);
		List<Recipe> tuijian = rService.getTuiJian();
		request.setAttribute("tuijian", tuijian);
		List<Recipe> zhongcan = rService.getZhongCan();
		request.setAttribute("zhongcan", zhongcan);
		List<Recipe> xican = rService.getXiCan();
		request.setAttribute("xican", xican);
		ArticleService aService = new ArticleServiceImp();
		List<Article> gonggao = aService.getGongGao();
		request.setAttribute("gonggao", gonggao);
		return "index.jsp";
	}
}
