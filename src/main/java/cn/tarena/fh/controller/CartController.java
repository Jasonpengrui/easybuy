package cn.tarena.fh.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tarena.fh.pojo.Product;
import cn.tarena.fh.service.ProductService;

@Controller
public class CartController {
	
	@Autowired
	private ProductService productService;

	//跳转到购物车页面
	@RequestMapping("/tocart")
	public String tocart(HttpSession session,Model model){
		
		Object obj = session.getAttribute("cart");
		
		Map<Product,Integer> cart = null;
		
		if(obj==null){
			cart = new HashMap<Product,Integer>();
			session.setAttribute("cart", cart);
		}else{
			cart = (Map<Product, Integer>) obj;
		}
		
		model.addAttribute("cartList", cart);
		
		//查询所有种类种类
		List<String>  descList=productService.selectDescription();
		model.addAttribute("descList",descList);
		return "cart";
	}
	
	//增加某个商品到购物车
	@RequestMapping("addProd")
	public String addcart(String prodId,Integer buyNum,HttpSession session){
		
		Object cartObj = session.getAttribute("cart");
		
		Map<Product,Integer> cart = null;
		//判断是否有购物车
		if(cartObj == null){//首次购买
			cart = new HashMap<Product,Integer>();
			session.setAttribute("cart", cart);
		}else{
			//非首次购买
			cart = (Map<Product, Integer>) cartObj;
		}
		
		Product prod = productService.fingdOne(prodId);
		
		if(cart.containsKey(prod)){
			cart.put(prod, cart.get(prod)+buyNum);
		}else{
			cart.put(prod, buyNum);
		}
		
		return "redirect:tocart";
	}
	
	//删除购物车中的某个商品
	@RequestMapping("deleteProd")
	public String deleteProd(String prodId,HttpSession session){
		
		Object cartObj = session.getAttribute("cart");
		
		//3、判断cartObj是否为null
		if(cartObj==null){//为null->index.jsp
			return "index";
		}else{//不为null
			//4、执行删除商品的操作
			Map<Product,Integer> cart = (Map<Product,Integer>)cartObj;
			Product prod = new Product();
			prod.setProdId(prodId);
			cart.remove(prod);
			return "redirect:tocart";
		}
		
	}
	
	//修改购物车中商品数量
	@RequestMapping("editProd")
	public String editProd(String prodId,Integer buyNum,HttpSession session){
		
		Object obj = session.getAttribute("cart");
		
		if(obj==null){
			return "index";
		}else{
			Map<Product,Integer> cart = (Map<Product, Integer>) obj;
			Product prod = new Product();
			prod.setProdId(prodId);
			cart.put(prod, buyNum);
			return "redirect:tocart";
		}
		
	}
	
}
