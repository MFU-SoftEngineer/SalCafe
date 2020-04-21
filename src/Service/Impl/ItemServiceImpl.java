package Service.Impl;

import java.util.List;

import Dao.Impl.ItemDaoImpl;
import Model.Item;
import Service.IItemService;

public class ItemServiceImpl implements IItemService{
	ItemDaoImpl itemDaoImpl;
	public ItemServiceImpl() {
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
