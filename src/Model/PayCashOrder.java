package Model;

public class PayCashOrder extends Order{
	private boolean cashGetInCounter;
	
	public void setCashGetInCounter(boolean isok) {this.cashGetInCounter = isok;}
	public boolean getCashGetInCounter() {return this.cashGetInCounter;}
}
