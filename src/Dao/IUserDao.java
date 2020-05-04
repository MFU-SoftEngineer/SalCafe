package Dao;

import Model.User;

public interface IUserDao {
	//Search user by User id(return true=success;false=fail)
	public boolean searchUser(int id);
	//Create user(return true=success;false=fail)
	public boolean createUser(User user);
	//Delete user by User id(return true=success;false=fail)
	public boolean deleteUser(int id);
}
