package com.cooking.dao.imp;

import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import com.cooking.dao.VideosDao;
import com.cooking.domain.Article;
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

	@Override
	public int findTotalRecords() throws Exception {
		String sql = "select count(*) from videos";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		Long num = (Long)qr.query(sql, new ScalarHandler());
		return num.intValue();
	}

	@Override
	public List<Videos> getVideosByMenu(int startIndex, int pageSize) throws Exception {
		String sql = "select * from videos limit ?,?";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		return qr.query(sql, new BeanListHandler<Videos>(Videos.class),startIndex,pageSize);

	}

	@Override
	public List<Videos> getVidesByUId(String u_id) throws Exception {
		String sql = "select * from videos where v_UId=?";
		QueryRunner qr = new QueryRunner(JDBCUtils.getDataSource());
		return qr.query(sql, new BeanListHandler<Videos>(Videos.class),u_id);
	}

}
