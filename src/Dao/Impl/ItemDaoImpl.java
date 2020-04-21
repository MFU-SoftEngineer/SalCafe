package Dao.Impl;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.service.ServiceRegistry;
import Dao.IItemDao;

import Model.*;

public class ItemDaoImpl implements IItemDao{
	SessionFactory sessionFactory;
	Session session;
	ConnectToolImpl connectToolImpl;
	public ItemDaoImpl() {
		System.out.println("initial ItemDao");
		ConnectToolImpl connectToolImpl1 = new ConnectToolImpl();
		sessionFactory = connectToolImpl1.getConnectFactory();
	}
	@Override
	public boolean createItem(Item item) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean deleteItem(int itemId) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean updateItem(Item item) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public List<Item> queryAllItem() {
		session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		List<Model.Item> itemList = session.createQuery("from Item").list();
		session.getTransaction().commit();
		return itemList;
	}

	@Override
	public List<Item> queryAllItemByType(int itemType) {
		session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		List<Item> itemList = session.createQuery("SELECT ent FROM Item ent WHERE ent.itemType=:ln order by itemSales desc").setParameter("ln", itemType).list();
		session.getTransaction().commit();
		return itemList;
	}

	@Override
	public List<Item> queryAllItemBySales(int requestNum) {
		// TODO Auto-generated method stub
		return null;
	}
}
