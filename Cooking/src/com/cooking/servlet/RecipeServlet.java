package com.cooking.servlet;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.io.IOUtils;

import com.cooking.domain.Evaluate;
import com.cooking.domain.PageModel;
import com.cooking.domain.Recipe;
import com.cooking.domain.RecipeBaseDict;
import com.cooking.service.EvaluateService;
import com.cooking.service.RecipeBaseDictService;
import com.cooking.service.RecipeService;
import com.cooking.service.imp.EvaluateServiceImp;
import com.cooking.service.imp.RecipeBaseDictServiceImp;
import com.cooking.service.imp.RecipeServiceImp;
import com.cooking.utils.UUIDUtils;
import com.cooking.utils.UploadUtils;


public class RecipeServlet extends BaseServlet {
	RecipeService rService = new RecipeServiceImp();
	public String delRecipe(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String r_id = request.getParameter("r_id");
		rService.delRecipe(r_id);
		response.sendRedirect("RecipeServlet?method=findRecipeByPage&num=1");
		return null;
	}
	public String editRecipeById(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String r_id = request.getParameter("r_id");
		Recipe recipe = rService.findRecipeById(r_id);
		request.setAttribute("recipe", recipe);
		RecipeBaseDictService rbdService = new RecipeBaseDictServiceImp();
		List<RecipeBaseDict> rbd = rbdService.getRBDAll();
		request.setAttribute("rbd", rbd);
		return "/administrator/recipe/editRecipe.jsp";
	}
	public String findRecipeByPage(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int curNum = Integer.parseInt(request.getParameter("num"));
		RecipeBaseDictService rbdService = new RecipeBaseDictServiceImp();
		List<RecipeBaseDict> rbd = rbdService.getRBDAll();
		request.setAttribute("rbd", rbd);
		PageModel pm = rService.findRecipeByPage(curNum);
		request.setAttribute("page", pm);
		return "/administrator/recipe/listRecipe.jsp";
	}
	public String addRecipePage(HttpServletRequest request, HttpServletResponse response) throws Exception {
		RecipeBaseDictService rbdService = new RecipeBaseDictServiceImp();
		List<RecipeBaseDict> rbd = rbdService.getRBDAll();
		request.setAttribute("rbd", rbd);
		return "/administrator/recipe/addRecipe.jsp";
	}
	
	public String findRecipeById(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String r_id = request.getParameter("r_id");
		Recipe recipe = rService.findRecipeById(r_id);
		request.setAttribute("recipe", recipe);
		EvaluateService evaluateService = new EvaluateServiceImp();
		List<Evaluate> evaluate = evaluateService.findEvaluateByRId(r_id);
		request.setAttribute("evaluate", evaluate);
		return "recipeView.jsp";
	}
	public String getRecipeByRBDId(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String rbd_id = request.getParameter("rbd_id");
		int curNum =Integer.parseInt(request.getParameter("num"));
		PageModel pm = rService.getRecipeByRBDId(curNum,rbd_id);
		request.setAttribute("page", pm);
		return "recipe.jsp";
	}
	public String editRecipe(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Map<String,String> map=new HashMap<String,String>();
		Recipe recipe = new Recipe();
		try {
			DiskFileItemFactory fac=new DiskFileItemFactory();
			ServletFileUpload upload=new ServletFileUpload(fac);
			List<FileItem> list=upload.parseRequest(request);
			for (FileItem item : list) {
				if(item.isFormField()){
					map.put(item.getFieldName(), item.getString("utf-8"));
				}else{
					String oldFileName=item.getName();
					String newFileName=UploadUtils.getUUIDName(oldFileName);
					InputStream is=item.getInputStream();
					String realPath=getServletContext().getRealPath("/upload/recipe");
					String dir=UploadUtils.getDir(newFileName); 
					String path=realPath+dir; 
					File newDir=new File(path);
					if(!newDir.exists()){
						newDir.mkdirs();
					}
					File finalFile=new File(newDir,newFileName);
					if(!finalFile.exists()){
						finalFile.createNewFile();
					}
					OutputStream os=new FileOutputStream(finalFile);
					IOUtils.copy(is, os);
					IOUtils.closeQuietly(is);
					IOUtils.closeQuietly(os);
					map.put("r_img", "/upload/recipe"+dir+"/"+newFileName);
				}
			}
			BeanUtils.populate(recipe, map);
			rService.editRecipe(recipe);
			response.sendRedirect("RecipeServlet?method=findRecipeByPage&num=1");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public String addRecipe(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Map<String,String> map=new HashMap<String,String>();
		Recipe recipe = new Recipe();
		try {
			DiskFileItemFactory fac=new DiskFileItemFactory();
			ServletFileUpload upload=new ServletFileUpload(fac);
			List<FileItem> list=upload.parseRequest(request);
			for (FileItem item : list) {
				if(item.isFormField()){
					map.put(item.getFieldName(), item.getString("utf-8"));
				}else{
					String oldFileName=item.getName();
					String newFileName=UploadUtils.getUUIDName(oldFileName);
					InputStream is=item.getInputStream();
					String realPath=getServletContext().getRealPath("/upload/recipe");
					String dir=UploadUtils.getDir(newFileName); 
					String path=realPath+dir; 
					File newDir=new File(path);
					if(!newDir.exists()){
						newDir.mkdirs();
					}
					File finalFile=new File(newDir,newFileName);
					if(!finalFile.exists()){
						finalFile.createNewFile();
					}
					OutputStream os=new FileOutputStream(finalFile);
					IOUtils.copy(is, os);
					IOUtils.closeQuietly(is);
					IOUtils.closeQuietly(os);
					map.put("r_img", "/upload/recipe"+dir+"/"+newFileName);
				}
			}
			BeanUtils.populate(recipe, map);
			recipe.setR_id(UUIDUtils.getId());
			recipe.setR_click("0");
			
			recipe.setR_time(new Date());
			rService.addRecipe(recipe);
			response.sendRedirect("RecipeServlet?method=findRecipeByPage&num=1");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
