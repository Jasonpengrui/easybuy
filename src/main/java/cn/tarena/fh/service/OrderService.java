package cn.tarena.fh.service;

import java.util.List;
import java.util.Map;

import cn.tarena.fh.pojo.Order;
import cn.tarena.fh.pojo.OrderItem;
import cn.tarena.fh.pojo.Product;
import cn.tarena.fh.pojo.User;

public interface OrderService {
	
	/**
	 * 订单列表查询
	 * @return order对象的list集合
	 */
	public List<Order> findAll();
	
	/**
	 * 根据订单编号查订单详情
	 * @param orderId:订单编号
	 * @return order对象
	 */
	public Order findOneByOid(String orderId);
	
	/**
	 * 根据订单编号查单个订单详情中的商品信息
	 * @param orderId:订单编号
	 * @return orderItem对象
	 */
	public List<OrderItem> findOrderits(String orderId);
	
	/**
	 * 根据订单编号删除订单
	 * @param orderId
	 */
	public void deleteByOid(String orderId);

	/**
	 * 根据session中的cart、user完成对order_p_count、order表中添加订单信息
	 * @param cart
	 * @param user 
	 */
	public void addOrder(Map<Product, Integer> cart, User user);
	/**
	 * 根据当前登录的用户id 查询该用户的所有订单列表
	 * @param userId
	 * @return
	 */
	public List<Order> findAllByUserId(String userId);

}
