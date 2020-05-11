package Model;
import java.util.Date;

import javax.persistence.Entity;

@Entity
public class Order {
	//order id
	private int orderId;
	//user id
	private String userName;
	//order price
	private double price;
	//order discount
	private double discount;
	//order payment method
	private int payment;
	//order receiver address
	private String receiverAddress;
	//order receiver name
	private String receiverName;
	//order receiver phone
	private String receiverPhone;
	//order create time
	private Date createTime;
	//order state
	private int orderState;
	//order item ids
	private String itemsId;
	
	public Order() {}
	public Order(int orderId,String userName,double price,double discount,int payment,
			String rAddress,String rName,String rPhone,Date createTime,int orderState,String itemsId) {
		this.orderId = orderId;
		this.userName = userName;
		this.price = price;
		this.discount = discount;
		this.payment = payment;
		this.receiverAddress = rAddress;
		this.receiverName = rName;
		this.receiverPhone = rPhone;
		this.createTime = createTime;
		this.orderState = orderState;
		this.itemsId = itemsId;
		
	}
	
	public void setOrderId(int orderId) {this.orderId = orderId;}
	public int getOrderId() {return this.orderId;}
	
	public void setUserName(String userName) {this.userName = userName;}
	public String getUserName() {return this.userName;}
	
	public void setPrice(double price) {this.price = price;}
	public double getPrice() {return this.price;}
	
	public void setDiscount(double discount) {this.discount = discount;}
	public double getDiscount() {return this.discount;}
	
	public void setPayment(int payment) {this.payment = payment;}
	public int getPayment() {return this.payment;}
	
	public void setReceiverAddress(String rAddress) {this.receiverAddress = rAddress;}
	public String getReceiverAddress() {return this.receiverAddress;}
	
	public void setReceiverName(String rName) {this.receiverName = rName;}
	public String getReceiverName() {return this.receiverName;}
	
	public void setReceiverPhone(String rPhone) {this.receiverPhone = rPhone;}
	public String getReceiverPhone() {return this.receiverPhone;}
	
	public void setCreateTime(Date createTime) {this.createTime = createTime;}
	public Date getCreateTime() {return this.createTime;}
	
	public void setOrderState(int orderState) {this.orderState = orderState;}
	public int getOrderState() {return this.orderState;}
	
	public void setItemsId(String itemsId) {this.itemsId = itemsId;}
	public String getItemsId(){return this.itemsId;}
}
