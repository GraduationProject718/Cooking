package com.cooking.servlet;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
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
import com.cooking.domain.ArticleEvaluate;
import com.cooking.domain.PageModel;
import com.cooking.domain.RecipeBaseDict;
import com.cooking.service.ArticleEvaluateService;
import com.cooking.service.ArticleService;
import com.cooking.service.RecipeBaseDictService;
import com.cooking.service.imp.ArticleEvaluateServiceImp;
import com.cooking.service.imp.ArticleServiceImp;
import com.cooking.service.imp.RecipeBaseDictServiceImp;
import com.cooking.utils.UUIDUtils;
import com.cooking.utils.UploadUtils;


public class ArticleServlet extends BaseServlet {
	ArticleService aService = new ArticleServiceImp();
	
	public String addArticle(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Map<String,String> map=new HashMap<String,String>();
		Article article = new Article();
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
					String realPath=getServletContext().getRealPath("/upload/");
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
					map.put("a_img", "/upload/"+dir+"/"+newFileName);
				}
			}
			BeanUtils.populate(article, map);
			article.setA_id(UUIDUtils.getId());
			aService.addArticle(article);
			String a_type = article.getA_type();
			response.sendRedirect("ArticleServlet?method=findArticleByPage&num=1&type="+a_type);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	public String addArticlePage(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String flag = request.getParameter("flag");
		if("news".equals(flag)) {
			return "/administrator/news/addArticle.jsp";
		}else {
			return "/administrator/healthArticle/addArticle.jsp";
		}
	}
	
	public String getArticleBytype(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String a_type = request.getParameter("type");
		int curNum =Integer.parseInt(request.getParameter("num"));
		PageModel pm = aService.getArticleBytype(curNum,a_type);
		request.setAttribute("page", pm);
		return "article.jsp";
	}
	
	public String findArticleByPage(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int curNum = Integer.parseInt(request.getParameter("num"));
		String a_type = request.getParameter("type");
		PageModel pm = aService.getList(a_type,curNum);
		request.setAttribute("page", pm);
		if("health".equals(a_type)) {
			return "/administrator/healthArticle/listArticle.jsp";
		}else {
			return "/administrator/news/listArticle.jsp";
		}
	}
	public String findArticleById(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String a_id = request.getParameter("a_id");
		Article article = aService.findArticleById(a_id);
		request.setAttribute("article", article);
		
		ArticleEvaluateService articleEvaluateService = new ArticleEvaluateServiceImp();
		List<ArticleEvaluate> articleEvaluate = articleEvaluateService.findArticleEvaluateById(a_id);
		request.setAttribute("articleEvaluate", articleEvaluate);
		return "articleView.jsp";
	}
	
	public String editArticleById(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String a_id = request.getParameter("a_id");
		String a_type = request.getParameter("a_type");
		Article article = aService.editArticleById(a_id);
		request.setAttribute("article", article);
		if("health".equals(a_type)) {
			return "/administrator/healthArticle/editArticle.jsp";
		}else {
			return "/administrator/news/editArticle.jsp";
		}
	}
	public String editArticle(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Map<String,String> map=new HashMap<String,String>();
		Article article = new Article();
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
					String realPath=getServletContext().getRealPath("/upload/");
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
					map.put("a_img", "/upload/"+dir+"/"+newFileName);
				}
			}
			BeanUtils.populate(article, map);
			String a_type = article.getA_type();
			aService.editArticle(article);
			response.sendRedirect("ArticleServlet?method=findArticleByPage&num=1&type="+a_type);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
		
	}
	public String delArticle(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String a_id = request.getParameter("a_id");
		String a_type = request.getParameter("a_type");
		aService.delArticle(a_id);
		response.sendRedirect("ArticleServlet?method=findArticleByPage&num=1&type="+a_type);
		return null;
	}
}
