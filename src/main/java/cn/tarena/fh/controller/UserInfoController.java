package cn.tarena.fh.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tarena.fh.pojo.User;
import cn.tarena.fh.service.UserInfoService;
import cn.tarena.fh.service.UserService;

@Controller
@RequestMapping("/back/userinfo")
public class UserInfoController extends BaseController{
	@Autowired
	private UserInfoService userInfoService;
	
	@Autowired
	private UserService userService;
	
	//显示
	@RequestMapping("/userInfo")
	public String userInfo(HttpSession session, Model model){
		
		
		User backuser= (User) session.getAttribute("backuser");
		
		User user = userService.findOne(backuser.getUserId());
		
		model.addAttribute("user", user);
		
		return "/back/userinfo/userInfo_list";
		
	}
	
	@RequestMapping("/toupdate")
	public String toUpdate(HttpSession session, Model model){
		User backuser= (User) session.getAttribute("backuser");
		
		User user = userService.findOne(backuser.getUserId());
		
		model.addAttribute("user", user);
		
		return "/back/userinfo/userInfo_detail";
	}
	
	@RequestMapping("/update")
	//userInfo 没有Id
	public String update(User user){
		
		userService.update(user);
		
		return "redirect:/back/userinfo/userInfo";
		
	}

}
