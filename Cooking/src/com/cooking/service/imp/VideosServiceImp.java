package com.cooking.service.imp;

import java.util.List;

import com.cooking.dao.VideosDao;
import com.cooking.dao.imp.VideosDaoImp;
import com.cooking.domain.PageModel;
import com.cooking.domain.Videos;
import com.cooking.service.VideosService;

public class VideosServiceImp implements VideosService {
	VideosDao vDao = new VideosDaoImp();
	@Override
	public void addVideos(Videos videos) throws Exception {
		vDao.addVideos(videos);
	}
	
	
	@Override
	public void delVideos(String v_id) throws Exception {
		vDao.delVideos(v_id);
	}


	@Override
	public PageModel getVideosByMenu(int curNum) throws Exception {
		int totalRecords =vDao.findTotalRecords();
		PageModel pm = new PageModel(curNum,totalRecords,6);
		List<Videos> list = vDao.getVideosByMenu(pm.getStartIndex(),pm.getPageSize());
		pm.setList(list);
		pm.setUrl("VideosServlet?method=getVideosByMenu");
		return pm;
	}
	
	
	@Override
	public PageModel getVideosByAdmin(int curNum) throws Exception {
		int totalRecords =vDao.findTotalRecords();
		PageModel pm = new PageModel(curNum,totalRecords,9);
		List<Videos> list = vDao.getVideosByMenu(pm.getStartIndex(),pm.getPageSize());
		pm.setList(list);
		pm.setUrl("VideosServlet?method=getVideosByAdmin");
		return pm;
	}
	@Override
	public List<Videos> getVidesByUId(String u_id) throws Exception {
		return vDao.getVidesByUId(u_id);
	}
	
}
