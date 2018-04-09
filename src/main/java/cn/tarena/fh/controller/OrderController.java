package cn.tarena.fh.controller;

import java.util.List;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.apache.shiro.authz.annotation.RequiresRoles;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tarena.fh.pojo.Order;
import cn.tarena.fh.pojo.OrderItem;
import cn.tarena.fh.service.OrderService;

@Controller
@RequestMapping("/back/order")
public class OrderController extends BaseController{
	
	@Autowired
	private OrderService orderService; 
	//订单列表查询
	
	@RequiresPermissions("订单管理")
	@RequestMapping("/oroderList")
	public String orderList(Model model){
		List<Order> orders = orderService.findAll();
		model.addAttribute("orders",orders);
		return "/back/order/jOrderList";
	}
	
	//某一个订单的详情
	@RequestMapping("/toview")
	public String toView(String orderId,Model model){
		Order order = orderService.findOneByOid(orderId);
		List<OrderItem> orderitems = orderService.findOrderits(orderId);
		model.addAttribute("o",order);
		model.addAttribute("orderitems",orderitems);
		return "/back/order/jOrderView";
	}
	
	@RequestMapping("/todelete")
	public String toDelete(String orderId){
		orderService.deleteByOid(orderId);
		return "redirect:/back/order/oroderList";
	}
}
