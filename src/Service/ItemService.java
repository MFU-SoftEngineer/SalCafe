package Service;

import java.util.List;

import Dao.Impl.ItemDaoImpl;
import Model.Item;
import Service.ServiceImpl.ItemServiceImpl;

public class ItemService implements ItemServiceImpl{
	ItemDaoImpl itemDaoImpl;
	public ItemService() {
		itemDaoImpl = new ItemDaoImpl();
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
		// TODO Auto-generated method stub
		return itemDaoImpl.queryAllItem();
	}

	@Override
	public List<Item> queryAllItemByType(int itemType) {
		// TODO Auto-generated method stub
		return itemDaoImpl.queryAllItemByType(itemType);
	}

	@Override
	public List<Item> queryAllItemBySales(int requestNum) {
		// TODO Auto-generated method stub
		return null;
	}

}
