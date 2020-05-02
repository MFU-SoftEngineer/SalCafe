package Service.Impl;

public class UserServiceImpl {
			//User id number
			private int nameId;
			//User name
			private String nameUser;
			//Pass
			private String Password;
			
			public void setUserId(int itemId) {
				this.nameId = itemId;
			}
			public int getUserId() {
				return this.nameId;
			}
			
			public void setUserName(String userName) {
				this.nameUser = userName;
			}
			public String getUserName() {
				return this.nameUser;
			}

			public void setPass(String pass) {
				this.Password = pass;
			}
			public String getPass() {
				return this.Password;
			}
}
