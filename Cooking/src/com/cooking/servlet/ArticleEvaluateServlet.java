package com.cooking.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cooking.domain.ArticleEvaluate;
import com.cooking.domain.PageModel;
import com.cooking.service.ArticleEvaluateService;
import com.cooking.service.imp.ArticleEvaluateServiceImp;
import com.cooking.utils.UUIDUtils;

public class ArticleEvaluateServlet extends BaseServlet {
	ArticleEvaluateService articleEvaluateService = new ArticleEvaluateServiceImp();
	
	public String add(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String a_id = request.getParameter("a_id");
		String u_id = request.getParameter("u_id");
		String ae_content = request.getParameter("ae_content");
		ArticleEvaluate articleEvaluate = new ArticleEvaluate();
		articleEvaluate.setAe_id(UUIDUtils.getId());
		articleEvaluate.setAe_content(ae_content);
		articleEvaluate.setAe_time(new Date());
		articleEvaluate.setAe_UId(u_id);
		articleEvaluate.setAe_AId(a_id);
		articleEvaluateService.add(articleEvaluate);
		response.sendRedirect("ArticleServlet?method=findArticleById&a_id="+a_id);
		return null;
	}
	
	public String findAllByAdmin(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int curNum = Integer.parseInt(request.getParameter("num"));
		PageModel pm = articleEvaluateService.findAllByAdmin(curNum);
		request.setAttribute("page", pm);
		return "/administrator/articleEvaluate/listArticleEvaluate.jsp";
	}
	
	public String del(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String ae_id = request.getParameter("ae_id");
		articleEvaluateService.del(ae_id);
		response.sendRedirect("ArticleEvaluateServlet?method=findAllByAdmin&num=1");
		return null;
	}
}
