package Service.Impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
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
	public HashMap<Integer,List<Item>> queryAllItemBySales(int requestNum) {
		// TODO Auto-generated method stub
		List<Item> itemList = itemDaoImpl.queryAllItemBySales(requestNum);
		HashMap<Integer,List<Item>> itemMap = new HashMap<Integer,List<Item>>();
		List<Item> itemList1 = new ArrayList<Item>();
		List<Item> itemList2 = new ArrayList<Item>();
		for(Item i:itemList) {
			if(i.getItemType() == 1) {
				itemList1.add(i);
			}else {
				itemList2.add(i);
			}
		}
		itemMap.put(1, itemList1);
		itemMap.put(2, itemList2);
		return itemMap;
	}
	@Override
	public List<Item> queryAllItemByIdList(String idString) {
		// TODO Auto-generated method stub
		String[] idList = idString.split("S");
		Collection<Integer> idArray = new ArrayList<Integer>();
		for(int i = 0;i<idList.length;i++) {
			idArray.add(Integer.valueOf(idList[i]));
		}
		return itemDaoImpl.queryAllItemByIdList(idArray);
	}

}
