package cn.tarena.fh.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tarena.fh.mapper.OrderMapper;
import cn.tarena.fh.pojo.Order;
import cn.tarena.fh.pojo.OrderItem;
import cn.tarena.fh.pojo.Product;
import cn.tarena.fh.pojo.User;

@Service
public class OrderServiceImpl implements OrderService{
	
	@Autowired
	private OrderMapper orderMapper;
	
	
	
	
	@Override
	public List<Order> findAll() {
		return orderMapper.findAll();
	}
	@Override
	public Order findOneByOid(String orderId) {
		// TODO Auto-generated method stub
		return orderMapper.findOneByOid(orderId);
	}
	@Override
	public List<OrderItem> findOrderits(String orderId) {
		// TODO Auto-generated method stub
		return orderMapper.findOrderits(orderId);
	}
	@Override
	public void deleteByOid(String orderId) {
		// TODO Auto-generated method stub
		orderMapper.deleteByOid(orderId);
		orderMapper.deleteoitByOid(orderId);
	}

	
	
	@Override
	public void addOrder(Map<Product, Integer> cart, User user) {
		//生成订单ID
		String orderId = UUID.randomUUID().toString();
		double money = 0;
		
		//往order_p_count表中存多条记录
		
		//遍历cart
		for(Map.Entry<Product, Integer> entry:cart.entrySet()){
			Map<String,Object> map = new HashMap<String,Object>();
			String oitid = UUID.randomUUID().toString();
			map.put("id", oitid);
			map.put("orderId", orderId);
			map.put("prodId", entry.getKey().getProdId());
			map.put("count",entry.getValue());
			money+=entry.getKey().getPrice()*entry.getValue();
			orderMapper.saveOrderItem(map);
		}
		
		//往order_p中存一条记录
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("orderId", orderId);
		map.put("userId", user.getUserId());
		map.put("money", money);
		map.put("paystate",0);
		orderMapper.saveOrder(map);
	}
	@Override
	public List<Order> findAllByUserId(String userId) {
		return orderMapper.findAllByUserId(userId);
	}
}
