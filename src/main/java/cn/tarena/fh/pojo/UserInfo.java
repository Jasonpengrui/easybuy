package cn.tarena.fh.pojo;

import java.util.Date;
/**
 * @author Administrator
 *
 */
public class UserInfo {

	private String userInfoId;
	private String nickname;
	private String realname;
	private Integer gender;
	private String email;
	private String address;
	private String cardNo;
	private Date birthday;
	private String telephone;
	private Integer orderNo;



	@Override
	public String toString() {
		return "UserInfo [userInfoId=" + userInfoId + ", nickname=" + nickname + ", realname=" + realname + ", gender="
				+ gender + ", email=" + email + ", address=" + address + ", cardNo=" + cardNo + ", birthday=" + birthday
				+ ", telephone=" + telephone + ", orderNo=" + orderNo + "]";
	}

	public String getUserInfoId() {
		return userInfoId;
	}

	public void setUserInfoId(String userInfoId) {
		this.userInfoId = userInfoId;
	}

	public String getNickname() {
		return nickname;
	}

	public void setNickname(String nickname) {
		this.nickname = nickname;
	}

	public String getRealname() {
		return realname;
	}

	public void setRealname(String realname) {
		this.realname = realname;
	}

	public Integer getGender() {
		return gender;
	}

	public void setGender(Integer gender) {
		this.gender = gender;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}


	public String getCardNo() {
		return cardNo;
	}

	public void setCardNo(String cardNo) {
		this.cardNo = cardNo;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}





	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public Integer getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(Integer orderNo) {
		this.orderNo = orderNo;
	}



	



}
