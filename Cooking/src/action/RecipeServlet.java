package action;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.RecipeService;

@WebServlet("/recipe")
public class RecipeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public RecipeServlet() {
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
		RecipeService recipeService = new RecipeService();
		
		if("addRecipe".equals(flag)){
			String u_id = request.getParameter("u_id");
			String r_name = request.getParameter("r_name");
			String r_information = request.getParameter("r_information");
			String r_material = request.getParameter("r_material");
			String r_practice = request.getParameter("r_practice");
			System.out.println("u_id"+u_id+"\n名称"+r_name+"\n简介"+r_information+"\n材料"+r_material+"\n做法"+r_practice);
			response.sendRedirect("../user.jsp");
		}
	}

}
