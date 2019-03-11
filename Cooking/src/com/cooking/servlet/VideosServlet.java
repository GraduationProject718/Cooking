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

import com.cooking.domain.Videos;
import com.cooking.service.VideosService;
import com.cooking.service.imp.VideosServiceImp;
import com.cooking.utils.UUIDUtils;
import com.cooking.utils.UploadUtils;

public class VideosServlet extends BaseServlet {
	private static final long serialVersionUID = 1L;
	VideosService vService = new VideosServiceImp();
	public String addVideosPage(HttpServletRequest request, HttpServletResponse response) throws Exception {
		return "addVideos.jsp";
	}
	
	public String addVideos(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Map<String,String> map=new HashMap<String,String>();
		Videos videos = new Videos();
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
					String realPath=getServletContext().getRealPath("/upload/videos");
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
					map.put("v_url", "/upload/videos"+dir+"/"+newFileName);
				}
			}
			BeanUtils.populate(videos, map);
			videos.setV_id(UUIDUtils.getId());
			vService.addVideos(videos);
			response.sendRedirect("user.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
