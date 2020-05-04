package Service.Impl;

import Dao.Impl.UserDaoImpl;
import Model.User;
import Service.IUserService;

public class UserServiceImpl implements IUserService{
	UserDaoImpl userDaoImpl;
	public UserServiceImpl() {
		userDaoImpl = new UserDaoImpl();
	}
	
	@Override
	public boolean searchUser(int id) {
		// TODO Auto-generated method stub
		return userDaoImpl.searchUser(id);
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
}