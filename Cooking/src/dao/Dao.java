package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.jsp.jstl.sql.Result;
import javax.servlet.jsp.jstl.sql.ResultSupport;

import jdbc.jdbcUtils;

public class Dao {
	private Connection con;
	private Statement stmt;
	private ResultSet rs;
	
	/*	操作：
	 * 	获取结果集：getList(String sql)
	 * 	更新：update(String sql)
	 * 
	 * */
	public Result getList(String sql) {
		Result result =null;
		try {
			con = jdbcUtils.getConnection();
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);
			result = ResultSupport.toResult(rs);
		} catch(SQLException e){
			e.printStackTrace();
		}finally{
			jdbcUtils.releaseResources(rs, stmt, con);
		}
		return result;
	}
	
	public int update(String sql){
		int result = 0;
		try {
			con = jdbcUtils.getConnection();
			stmt = con.createStatement();
			result = stmt.executeUpdate(sql);
		} catch (SQLException e) {
			e.printStackTrace();
		}finally{
			jdbcUtils.releaseResources(rs, stmt, con);
		}
		return result;
	}
	
	public int getData(String sql){
		int result=0;
		try {
			con = jdbcUtils.getConnection();
			stmt = con.createStatement();
			rs=stmt.executeQuery(sql);
			if(rs.next()){
				result=1;
		  }
		}catch (SQLException e) {
			e.printStackTrace();
		}finally{
			jdbcUtils.releaseResources(rs, stmt, con);
		}
		return result;
	}
	public int getData_a_ID(String sql){
		int result=0;
		try {
			con = jdbcUtils.getConnection();
			stmt = con.createStatement();
			rs=stmt.executeQuery(sql);
			if(rs.next()){
				int ID = rs.getInt("ID");
				result=ID;
		  }
		}catch (SQLException e) {
			e.printStackTrace();
		}finally{
			jdbcUtils.releaseResources(rs, stmt, con);
		}
		return result;
	}
	
}