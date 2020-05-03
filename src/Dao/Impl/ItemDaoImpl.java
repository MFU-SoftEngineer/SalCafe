package Dao.Impl;
import java.util.Collection;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.query.Query;
import org.hibernate.service.ServiceRegistry;
import Dao.IItemDao;

import Model.*;

public class ItemDaoImpl implements IItemDao{
	SessionFactory sessionFactory;
	Session session;
	ConnectToolImpl connectToolImpl;
	public ItemDaoImpl() {
		try {
			System.out.println("initial ItemDao");
			ConnectToolImpl connectToolImpl1 = new ConnectToolImpl();
			sessionFactory = connectToolImpl1.getConnectFactory();
		}catch(Exception e) {
			System.out.println("initial ItemDao wrong");
			e.printStackTrace();
		}
		
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
		List<Model.Item> itemList = null;
		try {
			session = sessionFactory.getCurrentSession();
			session.beginTransaction();
			itemList = session.createQuery("from Item").list();		
			return itemList;
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			session.getTransaction().commit();
			session.close();
		}	
		return itemList;
	}

	@Override
	public List<Item> queryAllItemByType(int itemType) {
		List<Item> itemList = null;
		try {
			session = sessionFactory.getCurrentSession();
			session.beginTransaction();
			itemList = session.createQuery("SELECT ent FROM Item ent WHERE ent.itemType=:ln").setParameter("ln", itemType).list();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			session.getTransaction().commit();
			session.close();
		}	
		return itemList;
	}

	@Override
	public List<Item> queryAllItemBySales(int requestNum) {
		List<Item> itemList = null;
		try {
			session = sessionFactory.getCurrentSession();
			session.beginTransaction();
			itemList = session.createQuery("SELECT ent FROM Item ent WHERE ent.itemType=:typeId order by itemSales desc").setParameter("typeId", 1).setFirstResult(0).setMaxResults(requestNum).list();
			List<Item> itemList2 = session.createQuery("SELECT ent FROM Item ent WHERE ent.itemType=:typeId order by itemSales desc").setParameter("typeId", 2).setFirstResult(0).setMaxResults(requestNum).list();
			itemList.addAll(itemList2);
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			session.getTransaction().commit();
			session.close();
		}
		return itemList;
	}
	@Override
	public List<Item> queryAllItemByIdList(Collection id) {
		// TODO Auto-generated method stub
		List<Item> itemList = null;
		try {
			session = sessionFactory.getCurrentSession();
			session.beginTransaction();
			String hql = "from Item where itemId in (:ids)";
			itemList = session.createQuery(hql).setParameterList("ids", id).list();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			session.getTransaction().commit();
	        session.close();
		}
	    return itemList;
	}
}
