package com.cooking.dao.imp;

import org.apache.commons.dbutils.QueryRunner;

import com.cooking.dao.VideosDao;
import com.cooking.domain.Videos;
import com.cooking.utils.JDBCUtils;

public class VideosDaoImp implements VideosDao {

	@Override
	public void addVideos(Videos videos) throws Exception {
		String sql = "insert into videos values(?,?,?,?)";
		QueryRunner qr=new QueryRunner(JDBCUtils.getDataSource());
		Object[] params={videos.getV_id(),videos.getV_name(),videos.getV_url(),videos.getV_UId()};
		qr.update(sql,params);
	}

}
