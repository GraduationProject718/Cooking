package com.cooking.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cooking.domain.Evaluate;
import com.cooking.domain.PageModel;
import com.cooking.service.EvaluateService;
import com.cooking.service.imp.EvaluateServiceImp;
import com.cooking.utils.UUIDUtils;

public class EvaluateServlet extends BaseServlet {
	EvaluateService evaluateService = new EvaluateServiceImp();

	public String add(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String r_id = request.getParameter("r_id");
		String u_id = request.getParameter("u_id");
		String e_content = request.getParameter("e_content");
		Evaluate evaluate = new Evaluate();
		evaluate.setE_id(UUIDUtils.getId());
		evaluate.setE_content(e_content);
		evaluate.setE_time(new Date());
		evaluate.setE_UId(u_id);
		evaluate.setE_RId(r_id);
		evaluateService.add(evaluate);
		response.sendRedirect("RecipeServlet?method=findRecipeById&r_id="+r_id);
		return null;
	}
	
	public String findAllByAdmin(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int curNum = Integer.parseInt(request.getParameter("num"));
		PageModel pm = evaluateService.findAllByAdmin(curNum);
		request.setAttribute("page", pm);
		return "/administrator/evaluate/listEvaluate.jsp";
	}
	
	public String del(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String e_id = request.getParameter("e_id");
		evaluateService.del(e_id);
		response.sendRedirect("EvaluateServlet?method=findAllByAdmin&num=1");
		return null;
	}
}
