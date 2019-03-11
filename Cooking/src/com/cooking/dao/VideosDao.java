package com.cooking.dao;

import java.util.List;

import com.cooking.domain.Videos;

public interface VideosDao {

	void addVideos(Videos videos) throws Exception;

	int findTotalRecords() throws Exception;

	List<Videos> getVideosByMenu(int startIndex, int pageSize) throws Exception;

}
