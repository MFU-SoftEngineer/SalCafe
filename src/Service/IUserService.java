package Service;

import java.util.List;

import Model.User;

public interface IUserService {
	//Search user by User id(return true=success;false=fail)
	public boolean searchUser(int id);
	//Create user(return true=success;false=fail)
	public boolean createUser(User user);
	//Delete user by User id(return true=success;false=fail)
	public boolean deleteUser(int id);

}
