package empvista.entities;

public class User {
	
	 private String emailAddress;
	 private String password;
	 private int loggedIn;
	 private String lastLoggedIN;
	 
	 private int userId;
	 private int userRoleId;
	 private String userName;
	 
	 private String roleName;
	 
	 public String getRoleName() {
		return roleName;
	}
	 public void setRoleName(String roleName) {
		 this.roleName = roleName;
	 }
	 private String profilePicName;
	 
	 public String getProfilePicName() {
		return profilePicName;
	}
	 public void setProfilePicName(String profilePicName) {
		 this.profilePicName = profilePicName;
	 }
	 public int getUserId() {
		return userId;
	}
	 public void setUserId(int userId) {
		 this.userId = userId;
	 }
	 public int getUserRoleId() {
		 return userRoleId;
	 }
	 public void setUserRoleId(int userRoleId) {
		 this.userRoleId = userRoleId;
	 }
	 public String getUserName() {
		 return userName;
	 }
	 public void setUserName(String userName) {
		 this.userName = userName;
	 }
	 public String getEmailAddress() {
		 return emailAddress;
	 }
	 public void setEmailAddress(String emailAddress) {
		 this.emailAddress = emailAddress;
	 }
	 public String getPassword() {
		 return password;
	 }
	 public void setPassword(String password) {
		 this.password = password;
	 }
	 public int getLoggedIn() {
		 return loggedIn;
	 }
	 public void setLoggedIn(int loggedIn) {
		 this.loggedIn = loggedIn;
	 }
	 public String getLastLoggedIN() {
		 return lastLoggedIN;
	 }
	 public void setLastLoggedIN(String lastLoggedIN) {
		 this.lastLoggedIN = lastLoggedIN;
	 }
	 @Override
	 public String toString() {
		return "User [emailAddress=" + emailAddress + ", password=" + password + ", loggedIn=" + loggedIn
				+ ", lastLoggedIN=" + lastLoggedIN + "]";
	 } 
	 
	 

}
