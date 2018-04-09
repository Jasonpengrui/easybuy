package cn.tarena.fh.mapper;

import java.util.List;
import java.util.Map;

import cn.tarena.fh.pojo.Order;
import cn.tarena.fh.pojo.OrderItem;

public interface OrderMapper {
	
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
	 * 根据订单编号删除order_p_count表中数据
	 * @param orderId
	 */
	public void deleteoitByOid(String orderId);
	
	/**
	 * 根据订单编号删除order_p表中数据
	 * @param orderId
	 */
	public void deleteByOid(String orderId);
	
	/**
	 * 在order表中存入一条订单数据
	 * @param map
	 */
	public void saveOrder(Map<String, Object> map);

	public void saveOrderItem(Map<String, Object> map);
	
	/**
	 * 根据用户Id查询该用户所有的订单
	 * @param userId
	 * @return List<Order>
	 */
	public List<Order> findAllByUserId(String userId);


}
