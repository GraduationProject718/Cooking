package action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.Article;
import entity.PageBean;
import service.ArticleService;
import service.RecipeService;




@WebServlet("/ArticleServlet")
public class ArticleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ArticleServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		String flag = request.getParameter("flag");
		ArticleService articleService = new ArticleService();
		Article article;
		
		if("addArticle".equals(flag)){
			article = new Article();
			String a_UId = request.getParameter("u_id");
			String a_content = request.getParameter("a_content");
			String a_title = request.getParameter("a_title");
			String a_time = request.getParameter("a_time");
			String rbd_parent = request.getParameter("rbd_parent");
			String rbd_child = request.getParameter("rbd_child");
			article.setA_title(a_title);
			article.setA_content(a_content);
			article.setA_time(a_time);
			article.setA_UId(Integer.valueOf(a_UId));
			if(rbd_child == null || rbd_child== ""){
				article.setA_RBDId(Integer.valueOf(rbd_parent));
			}else{
				article.setA_RBDId(Integer.valueOf(rbd_child));
			}
			if(articleService.addLogin(article)){
				response.sendRedirect("../user.jsp");
			}
		}
		
		if("healthAndWellness".equals(flag)){
			String currentPage = request.getParameter("currentPage"); 
			int pageCount = 5;
			if(currentPage == ""||currentPage==null){
				currentPage = "1";
			}
			int currPage = Integer.valueOf(currentPage);
			
			int start = (currPage-1)*pageCount;
			int end = start+pageCount;
			ArrayList<Article> list = articleService.findArticle(start,end);
			request.getSession().setAttribute("article", list);
			request.getSession().setAttribute("currPage", currPage);
			response.sendRedirect("../healthAndWellness.jsp");
		}
		
		out.flush();
		out.close();
		
	}

}
