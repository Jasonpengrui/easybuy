
package cn.tarena.fh.pojo;

import java.util.List;

public class User extends BaseEntity{
	private String userId;
	private String username;
	private String password;
	private Integer state;
	private String privilege;
	private UserInfo userInfo;

	private List<Powder> powders;
	
	
	
	public List<Powder> getPowders() {
		return powders;
	}
	public void setPowders(List<Powder> powders) {
		this.powders = powders;
	}

	public String getPrivilege() {
		return privilege;
	}
	public void setPrivilege(String privilege) {
		this.privilege = privilege;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public Integer getState() {
		return state;
	}
	public void setState(Integer state) {
		this.state = state;
	}
	public UserInfo getUserInfo() {
		return userInfo;
	}
	public void setUserInfo(UserInfo userInfo) {
		this.userInfo = userInfo;
	}
	@Override
	public String toString() {
		return "User [userId=" + userId + ", username=" + username + ", password=" + password + ", state=" + state
				+ ", privilege=" + privilege + ", userInfo=" + userInfo + "]";
	}
	
	
	
}
