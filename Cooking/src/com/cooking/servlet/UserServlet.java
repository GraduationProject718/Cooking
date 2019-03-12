package com.cooking.servlet;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cooking.domain.Article;
import com.cooking.domain.Recipe;
import com.cooking.domain.User;
import com.cooking.domain.Videos;
import com.cooking.service.ArticleService;
import com.cooking.service.RecipeService;
import com.cooking.service.UserService;
import com.cooking.service.VideosService;
import com.cooking.service.imp.ArticleServiceImp;
import com.cooking.service.imp.RecipeServiceImp;
import com.cooking.service.imp.UserServiceImp;
import com.cooking.service.imp.VideosServiceImp;
import com.cooking.utils.UUIDUtils;

public class UserServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	UserService uService = new UserServiceImp();
	
	public String register(HttpServletRequest request, HttpServletResponse response) throws Exception {
		User u = new User();
		String u_account = request.getParameter("u_account");
		String u_password = request.getParameter("u_password");
		String u_nickname = request.getParameter("u_nickname");
		String u_phone = request.getParameter("u_phone");
		String u_email = request.getParameter("u_email");
		String u_birthday = request.getParameter("u_birthday");
		u.setU_id(UUIDUtils.getId());
		u.setU_account(u_account);
		u.setU_password(u_password);
		u.setU_nickname(u_nickname);
		u.setU_phone(u_phone);
		u.setU_email(u_email);
		u.setU_information("这个人很懒，什么都没有留下。");
		u.setU_img("images/userimg.jpg");
		u.setU_birthday(u_birthday);
		u.setU_date(new Date());
		uService.register(u);
		response.sendRedirect("/Cooking/login.jsp");
		return null;
	}
	public String addUserDate(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String u_id = request.getParameter("u_id");
		
		RecipeService rService = new RecipeServiceImp();
		List<Recipe> userRecipe = rService.getRecipeByUId(u_id);
		request.setAttribute("userRecipe", userRecipe);
		
		ArticleService aService = new ArticleServiceImp();
		List<Article> userArticle = aService.getArticleByUId(u_id);
		request.setAttribute("userArticle", userArticle);
		
		VideosService vService = new VideosServiceImp();
		List<Videos> userVideos = vService.getVidesByUId(u_id);
		request.setAttribute("userVideos", userVideos);
		
		response.sendRedirect("user.jsp");
		return null;
	}
	
	public String login(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String u_account = request.getParameter("u_account");
		String u_password = request.getParameter("u_password");
		User user = uService.login(u_account,u_password);
		request.getSession().setAttribute("user", user);
		response.sendRedirect("/Cooking/firstIndex.jsp");
		return null;
	}
	public String exit(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.getSession().invalidate();
		response.sendRedirect("/Cooking/firstIndex.jsp");
		return null;
	}
}
