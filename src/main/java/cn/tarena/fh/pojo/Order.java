package cn.tarena.fh.pojo;

import java.util.Date;

public class Order extends BaseEntity {
	private String orderId;
	private double money;
	private int paystate;
	private User user;
	private OrderInfo orderInfo;
	public String getOrderId() {
		return orderId;
	}
	public void setOrderId(String orderId) {
		this.orderId = orderId;
	}
	public double getMoney() {
		return money;
	}
	public void setMoney(double money) {
		this.money = money;
	}
	public int getPaystate() {
		return paystate;
	}
	public void setPaystate(int paystate) {
		this.paystate = paystate;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public OrderInfo getOrderInfo() {
		return orderInfo;
	}
	public void setOrderInfo(OrderInfo orderInfo) {
		this.orderInfo = orderInfo;
	}
	@Override
	public String toString() {
		return "Order [orderId=" + orderId + ", money=" + money + ", paystate=" + paystate + ", user=" + user
				+ ", orderInfo=" + orderInfo + "]";
	}
	

}
