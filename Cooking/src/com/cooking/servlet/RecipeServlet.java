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

import com.cooking.domain.PageModel;
import com.cooking.domain.Recipe;
import com.cooking.domain.RecipeBaseDict;
import com.cooking.service.RecipeBaseDictService;
import com.cooking.service.RecipeService;
import com.cooking.service.imp.RecipeBaseDictServiceImp;
import com.cooking.service.imp.RecipeServiceImp;
import com.cooking.utils.UUIDUtils;
import com.cooking.utils.UploadUtils;


public class RecipeServlet extends BaseServlet {
	RecipeService rService = new RecipeServiceImp();
	
	public String addRecipePage(HttpServletRequest request, HttpServletResponse response) throws Exception {
		RecipeBaseDictService rbdService = new RecipeBaseDictServiceImp();
		List<RecipeBaseDict> rbd = rbdService.getRBDAll();
		request.setAttribute("rbd", rbd);
		return "addRecipe.jsp";
	}
	public String getRecipeByRBDId(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String rbd_id = request.getParameter("rbd_id");
		int curNum =Integer.parseInt(request.getParameter("num"));
		PageModel pm = rService.getRecipeByRBDId(curNum,rbd_id);
		request.setAttribute("page", pm);
		return "recipe.jsp";
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
			response.sendRedirect("user.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
