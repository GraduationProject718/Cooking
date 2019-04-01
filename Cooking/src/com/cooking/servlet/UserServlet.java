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

import com.cooking.domain.Article;
import com.cooking.domain.PageModel;
import com.cooking.domain.Recipe;
import com.cooking.domain.RecipeBaseDict;
import com.cooking.domain.ShouCang;
import com.cooking.domain.User;
import com.cooking.domain.Videos;
import com.cooking.service.ArticleService;
import com.cooking.service.RecipeBaseDictService;
import com.cooking.service.RecipeService;
import com.cooking.service.ShouCangService;
import com.cooking.service.UserService;
import com.cooking.service.VideosService;
import com.cooking.service.imp.ArticleServiceImp;
import com.cooking.service.imp.RecipeBaseDictServiceImp;
import com.cooking.service.imp.RecipeServiceImp;
import com.cooking.service.imp.ShouCangServiceImp;
import com.cooking.service.imp.UserServiceImp;
import com.cooking.service.imp.VideosServiceImp;
import com.cooking.utils.UUIDUtils;
import com.cooking.utils.UploadUtils;


public class UserServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	UserService uService = new UserServiceImp();
	
	public String editImg(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Map<String,String> map=new HashMap<String,String>();
		User user= new User();
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
					String realPath=getServletContext().getRealPath("/img/user/");
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
					map.put("u_img", "/img/user/"+dir+"/"+newFileName);
				}
			}
			BeanUtils.populate(user, map);
			uService.editImg(user);
			User u = uService.getUserByUid(user.getU_id());
			request.getSession().setAttribute("user", u);
			response.sendRedirect("user.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
		
	}
	
	public String editPassword(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String u_id = request.getParameter("u_id");
		String u_password = request.getParameter("new_password1");
		uService.editPassword(u_id,u_password);
		User user = uService.getUserByUid(u_id);
		request.getSession().setAttribute("user", user);
		response.sendRedirect("user.jsp");
		return null;
		
	}
	
	public String editUser(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String u_id = request.getParameter("u_id");
		String u_nickname = request.getParameter("u_nickname");
		String u_phone = request.getParameter("u_phone");
		String u_email = request.getParameter("u_email");
		String u_birthday = request.getParameter("u_birthday");
		String u_information = request.getParameter("u_information");
		User user = new User();
		user.setU_id(u_id);
		user.setU_nickname(u_nickname);
		user.setU_phone(u_phone);
		user.setU_email(u_email);
		user.setU_birthday(u_birthday);
		user.setU_information(u_information);
		uService.editUser(user);
		user = uService.getUserByUid(u_id);
		request.getSession().setAttribute("user", user);
		response.sendRedirect("user.jsp");
		return null;
	}
	
	
	public String del(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String u_id = request.getParameter("u_id");
		uService.del(u_id);
		response.sendRedirect("UserServlet?method=findUserByPage&num=1");
		return null;
	}
	
	
	public String findUserByPage(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int curNum = Integer.parseInt(request.getParameter("num"));
		PageModel pm = uService.findUserByPage(curNum);
		request.setAttribute("page", pm);
		return "/administrator/user/listUser.jsp";
	}
	
	public String register(HttpServletRequest request, HttpServletResponse response) throws Exception {
		User u = new User();
		String u_account = request.getParameter("u_account");
		String u_password = request.getParameter("u_password");
		String u_nickname = request.getParameter("u_nickname");
		String u_phone = request.getParameter("u_phone");
		String u_email = request.getParameter("u_email");
		String u_birthday = request.getParameter("u_birthday");
		u.setU_id(UUIDUtils.getId());
		u.setU_account(u_account);
		u.setU_password(u_password);
		u.setU_nickname(u_nickname);
		u.setU_phone(u_phone);
		u.setU_email(u_email);
		u.setU_information("这个人很懒，什么都没有留下。");
		u.setU_img("images/userimg.jpg");
		u.setU_birthday(u_birthday);
		u.setU_date(new Date());
		uService.register(u);
		response.sendRedirect("/Cooking/login.jsp");
		return null;
	}
	public String addUserDate(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String u_id = request.getParameter("u_id");
		
		RecipeService rService = new RecipeServiceImp();
		List<Recipe> userRecipe = rService.getRecipeByUser();
		request.setAttribute("userRecipe", userRecipe);
		
		ShouCangService scService = new ShouCangServiceImp();
		List<ShouCang> shoucang = scService.getByUid(u_id);
		request.setAttribute("shoucang", shoucang);
		return "user.jsp";
	}
	
	public String login(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String u_account = request.getParameter("u_account");
		String u_password = request.getParameter("u_password");
		User user = uService.login(u_account,u_password);
		request.getSession().setAttribute("user", user);
		
		response.sendRedirect("/Cooking/firstIndex.jsp");
		return null;
	}
	public String exit(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.getSession().invalidate();
		response.sendRedirect("/Cooking/firstIndex.jsp");
		return null;
	}
}
