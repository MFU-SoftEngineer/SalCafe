package Dao.Impl;

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
	public boolean searchUser(int id) {
		// TODO Auto-generated method stub
		boolean isok = false;
		try {
			session = sessionFactory.getCurrentSession();
			session.beginTransaction();
			String hql = "from User where userId = :id)";
			isok = session.createQuery(hql).setParameter("id", id).list().size() > 0 ? true : false;
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
					String hql = "from User where userId = :user)";
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
