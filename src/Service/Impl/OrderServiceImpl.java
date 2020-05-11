package Service.Impl;

import Dao.Impl.ItemDaoImpl;
import Dao.Impl.OrderDaoImpl;
import Model.Order;
import Service.IOrderService;

public class OrderServiceImpl implements IOrderService{
	OrderDaoImpl orderDaoImpl;
	
	public OrderServiceImpl() {
		orderDaoImpl = new OrderDaoImpl();
	}
	
	@Override
	public boolean addOrder(Order order) {
		// TODO Auto-generated method stub
		return orderDaoImpl.addOrder(order);
	}

}
