package Dao.Impl;

import org.hibernate.SessionFactory;
import org.hibernate.boot.MetadataSources;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.service.ServiceRegistry;

import Dao.IConnectToolDao;
import Dao.Impl.ConnectToolImpl;

public class ConnectToolImpl implements IConnectToolDao{

	@Override
	public SessionFactory getConnectFactory() {
		SessionFactory sessionFactory = null;
		try {
			ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder().configure("/hibernate.cfg.xml").build();
	        //create session factory
			sessionFactory = new MetadataSources(serviceRegistry).buildMetadata().buildSessionFactory();
			System.out.println("Create database connect factory success");
		}catch(Exception ex) {
			System.out.println("Get database connect factory error");
			ex.printStackTrace();
		}
		return sessionFactory;
	}
	
}