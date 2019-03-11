package com.cooking.service.imp;

import com.cooking.dao.VideosDao;
import com.cooking.dao.imp.VideosDaoImp;
import com.cooking.domain.Videos;
import com.cooking.service.VideosService;

public class VideosServiceImp implements VideosService {
	VideosDao vDao = new VideosDaoImp();
	@Override
	public void addVideos(Videos videos) throws Exception {
		vDao.addVideos(videos);
	}
	
}
