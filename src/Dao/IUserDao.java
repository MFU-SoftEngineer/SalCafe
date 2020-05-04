package Dao;

import java.util.List;

import Model.User;

public interface IUserDao {
	public boolean searchUser(int id);
	public boolean createUser(User user);
	public boolean deleteUser(int id);
}
