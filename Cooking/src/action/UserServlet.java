package action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.User;
import service.UserService;


@WebServlet("/UserServlet")
public class UserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public UserServlet() {
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
		UserService userService = new UserService();
		User user;
		/*
		 * 用户登录
		 * */
		if("login".equals(flag)){
			String u_account = request.getParameter("u_account");
			String u_password = request.getParameter("u_password");
			ArrayList<User> list = userService.getAll();
			for(User u: list){ 
				if(u.getU_account().equals(u_account) && u.getU_password().equals(u_password)){
					request.getSession().setAttribute("user", u);
					response.sendRedirect("../index.jsp");
				}else{
					out.write("您的应户名或密码错误"); 
				}
			}
		}

		
		/*
		 * 用户注册
		 * */
		if("register".equals(flag)){
			System.out.println("执行");
			String u_account = request.getParameter("u_account");
			String u_password = request.getParameter("u_password");
			String u_nickname = request.getParameter("u_nickname");
			String u_phone = request.getParameter("u_phone");
			String u_email = request.getParameter("u_email");
			String u_information = request.getParameter("u_information");
			String u_imgName = "";
			String u_imgUrl = "";
			user = new User();
			user.setU_account(u_account);
			user.setU_password(u_password);
			user.setU_nickname(u_nickname);
			user.setU_phone(u_phone);
			user.setU_email(u_email);
			user.setU_information(u_information);
			user.setU_imgName(u_imgName);
			user.setU_imgUrl(u_imgUrl);
			if(userService.register(user)){
				System.out.println("OK");
				response.sendRedirect("../index.jsp");
			}
		}
		out.flush();
		out.close();
	}

}
