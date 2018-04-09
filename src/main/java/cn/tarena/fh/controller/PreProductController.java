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
public class PreProductController {

	@Autowired
	private ProductService productService;
	
	@RequestMapping("/toproductList")
	public String productList(Model model,HttpSession session){
		
		List<Product> products = productService.findAllProduct();
		
		model.addAttribute("productList", products);
		
		List<Product> productList = productService.findProductByLike();
		model.addAttribute("productLike", productList);
		
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
		
		return "index";
	}
	

	@RequestMapping("/likesearch")
	public String productKeyList(String category,String keyword,Model model,HttpSession session	){
		
		List<Product> products = productService.findAllProductByKeyWrod(category,keyword);
		model.addAttribute("productList",products);
		
		List<Product> productList = productService.findProductByLike();
		model.addAttribute("productLike", productList);
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
		
		return "index";
	}
	
	
	@RequestMapping("/toquickview")
	public String findAllProduct(String prodId,Model model) {
		Product product=productService.fingdOne(prodId);
		model.addAttribute("product",product);
		return "quickview";
	}
	
//	@RequestMapping("喜爱排行")
//	public String productLikeList(Model model){
//		
//		List<Product> products = productService.findProductByLike();
//		model.addAttribute("productLike", products);
//		
//		return "";
//	}

}
