package Model;

import javax.persistence.Entity;

@Entity
public class Item {
	//item id number
	private int itemId;
	//item name
	private String itemName;
	//item price
	private int itemPrice;
	//item inventory
	private int itemInventory;
	//item photo url
	private String itemPhotoURL;
	//item describe
	private String itemDescribe;
	//item type (1==Beverage;2==Snack)
	private int itemType;
	//item sales(today sales)
	private int itemSales;
	
	public Item() {}
	public Item(int itemId,String itemName,int itemPrice,int itemInventory,
			String itemPhotoURL,String itemDescribe,int itemType,int itemSales) {
		this.itemId = itemId;
		this.itemName = itemName;
		this.itemPrice = itemPrice;
		this.itemInventory = itemInventory;
		this.itemPhotoURL = itemPhotoURL;
		this.itemDescribe =itemDescribe;
		this.itemType = itemType;
		this.itemSales = itemSales;
	}
	
	public void setItemId(int itemId) {
		this.itemId = itemId;
	}
	public int getItemId() {
		return this.itemId;
	}
	
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public String getItemName() {
		return this.itemName;
	}
	
	public void setItemPrice(int itemPrice) {
		this.itemPrice = itemPrice;
	}
	public int getItemPrice() {
		return this.itemPrice;
	}
	
	public void setItemInventory(int itemInventory) {
		this.itemInventory = itemInventory;
	}
	public int getItemInventory() {
		return this.itemInventory;
	}
	
	public void setItemPhotoURL(String itemPhotoURL) {
		this.itemPhotoURL = itemPhotoURL;
	}
	public String getItemPhotoURL() {
		return this.itemPhotoURL;
	}
	
	public void setItemDescribe(String itemDescribe) {
		this.itemDescribe = itemDescribe;
	}
	public String getItemDescribe() {
		return this.itemDescribe;
	}
	
	public void setItemType(int itemType) {
		this.itemType = itemType;
	}
	public int getItemType() {
		return this.itemType;
	}
	
	public void setItemSales(int itemSales) {
		this.itemSales = itemSales;
	}
	public int getItemSales() {
		return this.itemSales;
	}
}
