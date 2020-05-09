package Service;

import java.util.Date;

import Model.User;

public interface IUserService {
	//Search user by User id(return true=success;false=fail)
	public boolean searchUser(String userName,String password);
	//Create user(return true=success;false=fail)
	public boolean createUser(User user);
	//Delete user by User id(return true=success;false=fail)
	public boolean deleteUser(int id);
	
	public Date creareDate(Date date);

}
