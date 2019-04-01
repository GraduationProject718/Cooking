package com.cooking.service.imp;

import java.util.List;

import com.cooking.dao.UserDao;
import com.cooking.dao.imp.UserDaoImp;
import com.cooking.domain.PageModel;
import com.cooking.domain.Recipe;
import com.cooking.domain.User;
import com.cooking.service.UserService;

public class UserServiceImp implements UserService {
	UserDao uDao = new UserDaoImp();
	
	
	
	@Override
	public void editImg(User user) throws Exception {
		uDao.editImg(user);
	}
	@Override
	public void editPassword(String u_id, String u_password) throws Exception {
		uDao.editPassword(u_id,u_password);
		
	}
	@Override
	public User getUserByUid(String u_id) throws Exception {
		return uDao.getUserByUid(u_id);
	}
	@Override
	public void editUser(User user) throws Exception {
		uDao.editUser(user);
		
	}
	@Override
	public void del(String u_id) throws Exception {
		uDao.del(u_id);
	}
	@Override
	public PageModel findUserByPage(int curNum) throws Exception {
		int totalRecords =uDao.findTotalRecordsByPage();
		PageModel pm = new PageModel(curNum,totalRecords,9);
		List<User> list = uDao.findUserByPage(pm.getStartIndex(),pm.getPageSize());
		pm.setList(list);
		pm.setUrl("UserServlet?method=findUserByPage");
		return pm;	
	}
	@Override
	public User login(String u_account, String u_password) throws Exception {
		return uDao.login(u_account,u_password);
	}
	
	@Override
	public void register(User u) throws Exception {
		uDao.register(u);
	}

}
