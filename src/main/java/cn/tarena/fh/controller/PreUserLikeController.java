package cn.tarena.fh.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tarena.fh.pojo.Product;
import cn.tarena.fh.pojo.User;
import cn.tarena.fh.service.ProductService;

@Controller
public class PreUserLikeController {
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping("toLikeList")
	public String like(HttpSession session, Model model) {
		User user=(User)session.getAttribute("user");
		
		if(user!=null){
			List<Product> products = productService.findProductByUserId(user.getUserId());
			model.addAttribute("products", products);

			//查询所有种类种类
			List<String>  descList=productService.selectDescription();
			model.addAttribute("descList",descList);
			
			return "/product_like";	
		}
		

		
		
		return "redirect:/toproductList";

	}
	
	@RequestMapping("/addLike")
	public String insertLike(HttpSession session, String prodId) {
		
	User user=(User)session.getAttribute("user");
		
		if(user!=null){
			List<Product> products = productService.findProductByUserId(user.getUserId());

			productService.insertLike(user.getUserId(), prodId);
		}
		return "redirect:/toproductList";
	}
}
