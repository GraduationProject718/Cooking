package action;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import entity.RecipeBaseDict;
import net.sf.json.JSONArray;
import service.RecipeBaseDictService;

@WebServlet("/RecipeBaseDictServlet")
public class RecipeBaseDictServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public RecipeBaseDictServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html");
		String flag = request.getParameter("flag");
		RecipeBaseDictService recipeBaseDictService = new RecipeBaseDictService();
		
		if("findAll".equals(flag)){
			ArrayList<RecipeBaseDict> recipeBaseDict = recipeBaseDictService.findAll();
			response.setContentType("text/json"); 
			response.setCharacterEncoding("utf-8"); 
			JSONArray array = JSONArray.fromObject(recipeBaseDict.toArray()); 
			out.print(array);
		}
	}

}
