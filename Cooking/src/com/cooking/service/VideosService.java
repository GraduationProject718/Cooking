package com.cooking.service;

import java.util.List;

import com.cooking.domain.PageModel;
import com.cooking.domain.Videos;

public interface VideosService {

	void addVideos(Videos videos) throws Exception;

	PageModel getVideosByMenu(int curNum) throws Exception;

	List<Videos> getVidesByUId(String u_id) throws Exception;

}
