package cn.tarena.fh.pojo;

import java.util.Map;

public class OrderInfo  extends BaseEntity{
	private Map<Product,Integer> map;

	public Map<Product, Integer> getMap() {
		return map;
	}
	public void setMap(Map<Product, Integer> map) {
		this.map = map;
	}
}