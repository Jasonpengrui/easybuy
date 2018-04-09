package cn.tarena.fh.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import cn.tarena.fh.pojo.Type;
import cn.tarena.fh.pojo.User;
import cn.tarena.fh.service.ProductService;
import cn.tarena.fh.service.UserService;

@Controller
@RequestMapping("/back")
public class BackController {

	@Autowired
	private UserService userService;
	
	@Autowired ProductService productService;
	@RequestMapping("/home")
	public String home(){
		return "/back/index";
	}
	
	//注销
	@RequestMapping("/logout")
	public String  backLogout(HttpSession session){
		
		Subject subject=SecurityUtils.getSubject();
		
		if(subject.isAuthenticated()){
		
		session.removeAttribute("backuser");
		
		subject.logout();
		}
		return "/back/login";
	}

	@RequestMapping("/tologin")
	public String tologin(){
		return "/back/login";
	}
	
	@RequestMapping("/login")
	public String login(String username,String password,Model model,HttpSession session){

		if(StringUtils.isEmpty(username) && StringUtils.isEmpty(password)){
			model.addAttribute("errorInfo", "用户名和密码不能为空");
			return "/back/login";
		}
		
		Subject subject = SecurityUtils.getSubject();
		
		UsernamePasswordToken token = new UsernamePasswordToken(username,password);
		
		try {
			subject.login(token);
			User user = (User) subject.getPrincipal();	
			
			if(user.getState()==1||user.getState()==2){
				session.setAttribute("backuser", user);
				return "redirect:/back/home";
			}else{
				model.addAttribute("errorInfo", "用户名或者密码错误");
				return "redirect:/back/tologin";
			}
		} catch (AuthenticationException e) {
			model.addAttribute("errorInfo", "用户名或者密码错误");
			return "redirect:/back/tologin";
		}

		
		
	}

	
	
	@RequestMapping("/tongji1")
	public String tongJi1(Model model) throws JsonProcessingException{
		
		List<Type> type=productService.findAllLike();

		ObjectMapper mapper = new ObjectMapper();
		String jsonString = mapper.writeValueAsString(type);
		
		model.addAttribute("json", jsonString);
		System.out.println(jsonString);
		return "/back/tongji/sales_volume";
	}
	
	
	@RequestMapping("/tongji")
	public String tongji(Model model) throws JsonProcessingException{
		
		List<Type> types =  productService.findAllProductByType();
		
		ObjectMapper mapper = new ObjectMapper();
		String jsonString = mapper.writeValueAsString(types);
		
		model.addAttribute("types", jsonString);
		
		return "back/tongji/discharge_statistic";
	}

	
}
