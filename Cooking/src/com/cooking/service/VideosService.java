package com.cooking.service;

import com.cooking.domain.PageModel;
import com.cooking.domain.Videos;

public interface VideosService {

	void addVideos(Videos videos) throws Exception;

	PageModel getVideosByMenu(int curNum) throws Exception;

}
