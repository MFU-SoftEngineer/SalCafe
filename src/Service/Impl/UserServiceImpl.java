package Service.Impl;

import java.util.Date;

import Dao.Impl.UserDaoImpl;
import Model.User;
import Service.IUserService;

public class UserServiceImpl implements IUserService{
	UserDaoImpl userDaoImpl;
	public UserServiceImpl() {
		userDaoImpl = new UserDaoImpl();
	}
	
	@Override
	public boolean searchUser(String userName,String userPassWord) {
		// TODO Auto-generated method stub
		return userDaoImpl.searchUser(userName,userPassWord);
	}
	@Override
	public boolean createUser(User user) {
		// TODO Auto-generated method stub
		return userDaoImpl.createUser(user);
	}
	@Override
	public boolean deleteUser(int id) {
		// TODO Auto-generated method stub
		return userDaoImpl.deleteUser(id);
	}

	@Override
	public Date creareDate(Date date) {
		// TODO Auto-generated method stub
		return null;
	}
}