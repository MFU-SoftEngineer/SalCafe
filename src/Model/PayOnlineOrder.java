package Model;

public class PayOnlineOrder extends Order{
	private String payOnlineBank;
	private String payOnlineApplication;
	
	public void setPayOnlineBank(String bankName) {this.payOnlineBank = bankName;}
	public String getPayOnlineBank() {return this.payOnlineBank;}
	
	public void setPayOnlineApplication(String appName) {this.payOnlineApplication = appName;}
	public String getPayOnlineApplication() {return this.payOnlineApplication;}
}
