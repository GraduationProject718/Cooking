package com.cooking.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cooking.domain.Admin;
import com.cooking.service.AdminService;
import com.cooking.service.imp.AdminServiceImp;

public class AdminServlet extends BaseServlet {
	AdminService adminService = new AdminServiceImp();
	
	public String adminExit(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.getSession().invalidate();
		response.sendRedirect("/Cooking/administrator/login.jsp");
		return null;
	}
	
	public String edit(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String a_id = request.getParameter("a_id");
		String a_password = request.getParameter("new_password");
		adminService.edit(a_id,a_password);
		response.sendRedirect("/Cooking/administrator/main.jsp");
		return null;
	}
	
	public String login(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String a_account = request.getParameter("a_account");
		String a_password = request.getParameter("a_password");
		Admin admin = adminService.login(a_account,a_password);
		request.getSession().setAttribute("admin", admin);
		response.sendRedirect("/Cooking/administrator/main.jsp");
		return null;
	}
}
