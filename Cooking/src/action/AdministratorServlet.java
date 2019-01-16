package action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.AdministratorService;


@WebServlet("/Administrator")
public class AdministratorServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public AdministratorServlet() {
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
		AdministratorService administratorService = new AdministratorService();
		
		/*
		 * 管理员登录
		 * */
		if("login".equals(flag)){
			String a_account = request.getParameter("a_account");
			String a_password = request.getParameter("a_password");
			if(administratorService.login(a_account,a_password)){
				response.sendRedirect("../administrator/main.jsp");
			}else{
				response.sendRedirect("../administrator/login.jsp");
			}
		}
		
		out.flush();
		out.close();
	}

}
