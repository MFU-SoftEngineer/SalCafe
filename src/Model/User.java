package Model;

import java.util.Date;

public class User {
	//User id number
	private int userId;
	//User name
	private String userName;
	//User password
	private String userPassWord;
	//User phone number
	private int userPhoneNumber;
	//User email
	private String userEmail;
	//User address
	private String userDefaultAddress;
	//User state
	private String userState;
	//User time
	private Date createTime;
	//User gender
	private int userGender;
	//User type
	private int userType;
	
	public User() {}
	public User(int userId,String userName,String userPassWord,int userPhoneNumber,String userEmail,
			String userDefaultAddress,String userState,Date createTime,int userGender,int userType) {
		this.userId = userId;
		this.userName = userName;
		this.userPassWord = userPassWord;
		this.userPhoneNumber = userPhoneNumber;
		this.userEmail = userEmail;
		this.userDefaultAddress =userDefaultAddress;
		this.userState = userState;
		this.createTime = createTime;
		this.userGender = userGender;
		this.userType = userType;
	}
	
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserPassWord() {
		return userPassWord;
	}
	public void setUserPassWord(String userPassWord) {
		this.userPassWord = userPassWord;
	}
	public int getUserPhoneNumber() {
		return userPhoneNumber;
	}
	public void setUserPhoneNumber(int userPhoneNumber) {
		this.userPhoneNumber = userPhoneNumber;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserDefaultAddress() {
		return userDefaultAddress;
	}
	public void setUserDefaultAddress(String userDefaultAddress) {
		this.userDefaultAddress = userDefaultAddress;
	}
	public String getUserState() {
		return userState;
	}
	public void setUserState(String userState) {
		this.userState = userState;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	public int getUserGender() {
		return userGender;
	}
	public void setUserGender(int userGender) {
		this.userGender = userGender;
	}
	public int getUserType() {
		return userType;
	}
	public void setUserType(int userType) {
		this.userType = userType;
	}
	
	
}
