package Service;

import java.util.List;

import Model.Item;

public interface IItemService {
	//Create Item(return true=success;false=fail)
		public boolean createItem(Item item);
		//Delete item by Item id(return true=success;false=fail)
		public boolean deleteItem(int itemId);
		//Update Item(return true=success;false=fail)
		public boolean updateItem(Item item);
		//query all the item
		public List<Item> queryAllItem();
		//query item by item type
		public List<Item> queryAllItemByType(int itemType);
		//query item by item sales(requestNum == how many number of popular item you want)
		public List<Item> queryAllItemBySales(int requestNum);
}
