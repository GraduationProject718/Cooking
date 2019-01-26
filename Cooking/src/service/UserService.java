package service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.jsp.jstl.sql.Result;

import dao.Dao;
import entity.User;

public class UserService {
	Dao dao = new Dao();
	/*public boolean login(String u_account, String u_password) {
		String sql = "select * from user where u_account='"+u_account+"' and u_password='"+u_password+"'";
		if(dao.getData(sql)>0){
			return true;
		}
		return false;
	}*/
	
	public boolean register(User user) {
		String sql = "insert into user(u_account,u_password,u_nickname,u_phone,u_email,u_information,u_imgName,u_imgUrl) "
				+ "value('"+user.getU_account()+"','"+user.getU_password()+"','"+user.getU_nickname()+"','"+user.getU_phone()+"','"+user.getU_email()+"','"+user.getU_information()+"','"+user.getU_imgName()+"','"+user.getU_imgUrl()+"')";
		
		if(dao.update(sql)>0){
			return true;
		}
		return false;
	}
	public ArrayList<User> getAll() {
		ArrayList<User> user = new ArrayList<User>();
		String sql = "select * from user";
		Result result = dao.getList(sql);
		Object[][] data = result.getRowsByIndex();
		for(int i=0; i<data.length; i++){
			User u = new User();
			u.setU_id(Integer.valueOf(data[i][0].toString()));
			u.setU_account(data[i][1].toString());
			u.setU_password(data[i][2].toString());
			u.setU_nickname(data[i][3].toString());
			u.setU_phone(data[i][4].toString());
			u.setU_email(data[i][5].toString());
			u.setU_information(data[i][6].toString());
			u.setU_imgName(data[i][7].toString());
			u.setU_imgUrl(data[i][8].toString());
			user.add(u);
		}
		return user;
	}
	public boolean editUser(int u_id,String u_nickname, String u_information, String u_phone, String u_email) {
		String sql = "update user set u_nickname='"+u_nickname+"', u_information='"+u_information+"', u_phone='"+u_phone+"', u_email='"+u_email+"' where u_id="+u_id;
		if(dao.update(sql)>0){
			return true;
		}
		return false;
	}
	public boolean editPassword(int u_id,String u_newPassword) {
		String sql="update user set u_password='"+u_newPassword+"' where u_id="+u_id;
		if(dao.update(sql)>0){
			return true;
		}
		return false;
	}

}
