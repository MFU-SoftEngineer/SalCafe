package Dao.Impl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;

import Dao.IUserDao;
import Model.User;

public class UserDaoImpl implements IUserDao{
	SessionFactory sessionFactory;
	Session session;
	ConnectToolImpl connectToolImpl;
	public UserDaoImpl() {
		try {
			System.out.println("initial UserDao");
			ConnectToolImpl connectToolImpl1 = new ConnectToolImpl();
			sessionFactory = connectToolImpl1.getConnectFactory();
		}catch(Exception e) {
			System.out.println("initial UserDao wrong");
			e.printStackTrace();
		}
	}
	@Override
	public boolean searchUser(String userName, String userPassWord) {
		// TODO Auto-generated method stub
		boolean isok = false;
		try {
			session = sessionFactory.getCurrentSession();
			session.beginTransaction();
			isok = session.createQuery("SELECT ent FROM User ent WHERE ent.userName = :userName AND ent.userPassWord= :userPassWord").setParameter("userName", userName).setParameter("userPassWord", userPassWord).list().size()>0 ? true : false;		
			//List<User> userList = session.createQuery("SELECT ent FORM User ent WHERE ent.userName = :userName AND ent.userPassWord= :userPassWord").setParameter("userName", userName).setParameter("userPassWord", userPassWord).list();
			//if(userList.size() > 0) {
				//isok = true;
			//}else {
				//isok = false;
			//}		
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			session.getTransaction().commit();
	        session.close();
		}
		return isok;
	}
	@Override
	public boolean createUser(User user) {
		// TODO Auto-generated method stub
				boolean isok = false;
				try {
					session = sessionFactory.getCurrentSession();
					session.beginTransaction();
					session.save(user);
					isok = true;
				}catch(Exception e) {
					isok= false;
					e.printStackTrace();
				}finally {
					session.getTransaction().commit();
			        session.close();
				}
				return isok;
	}
	@Override
	public boolean deleteUser(int id) {
		// TODO Auto-generated method stub
		return false;
	}
}
