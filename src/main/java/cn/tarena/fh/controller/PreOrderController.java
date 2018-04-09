package cn.tarena.fh.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tarena.fh.pojo.Order;
import cn.tarena.fh.pojo.OrderItem;
import cn.tarena.fh.pojo.Product;
import cn.tarena.fh.pojo.User;
import cn.tarena.fh.service.OrderService;

@Controller
public class PreOrderController extends BaseController{
	
	@Autowired
	private OrderService orderService; 
	//订单列表查询
	@RequestMapping("/orderList")
	public String preorderList(HttpSession session,Model model){
		
		User user=(User) session.getAttribute("user");	
		if(user==null){
			return "redirect:/toproductList";
		}else{
			List<Order> orders = orderService.findAllByUserId(user.getUserId());
			model.addAttribute("orders",orders);
			return "/pre/fOrderList";
		}
	}
	
	//某一个订单的详情
	@RequestMapping("/toview")
	public String toView(String orderId,Model model){
		Order order = orderService.findOneByOid(orderId);
		List<OrderItem> orderitems = orderService.findOrderits(orderId);
		model.addAttribute("o",order);
		model.addAttribute("orderitems",orderitems);
		return "/pre/fOrderView";
	}
	
	@RequestMapping("/todelete")
	public String toDelete(String orderId){
		orderService.deleteByOid(orderId);
		return "redirect:/orderList";
	}
	
	//从购物车页面产生订单
	@RequestMapping("/addOrder")
	public String addOrder(HttpSession session){
		Map<Product,Integer> cart =
				(Map<Product,Integer>)session.getAttribute("cart");
		if(cart==null||cart.size()==0){
			return "redirect:/toproductList"; 
		}
		User user = (User) session.getAttribute("user");
		if(user==null){
			return "redirect:/tologin";
		}
		orderService.addOrder(cart,user);
		return "redirect:/orderList";
	}
	
}
