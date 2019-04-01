package com.cooking.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.cooking.domain.ShouCang;
import com.cooking.service.ShouCangService;
import com.cooking.service.imp.ShouCangServiceImp;
import com.cooking.utils.UUIDUtils;

public class ShouCangServlet extends BaseServlet {
	ShouCangService scService = new ShouCangServiceImp();
	public String add(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String u_id = request.getParameter("u_id");
		String r_id = request.getParameter("r_id");
		ShouCang shoucang = new ShouCang();
		shoucang.setId(UUIDUtils.getId());
		shoucang.setR_id(r_id);
		shoucang.setU_id(u_id);
		scService.add(shoucang);
		response.sendRedirect("UserServlet?method=addUserDate&u_id="+u_id);
		return null;
	}

}
