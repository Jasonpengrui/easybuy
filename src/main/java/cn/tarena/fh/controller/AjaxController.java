package cn.tarena.fh.controller;

import java.io.IOException;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.tarena.fh.pojo.User;
import cn.tarena.fh.service.UserInfoService;
import cn.tarena.fh.service.UserService;

@Controller
public class AjaxController {
	
	@Autowired
	private UserInfoService userInfoService;
	
	@Autowired
	private UserService userService;

	@RequestMapping("/AjaxCheckUsername")
	public void checkUsername(String username,HttpServletResponse response) throws IOException {
		
		User us = userService.findOneByUsername(username);
		boolean unIsExist;
		
		if(us!=null){//存在该用户
			unIsExist=true;
		}else{
			unIsExist=false;
		}

		// 3.检查用户名是否存在
		if(unIsExist==true){
			response.getWriter().write("<font style='color:red'>"+"The username is Existed</font>");
		}else{
			response.getWriter().write("<font style='color:green'>"+"Congratulations! The username is not be used</font>");
		}
	}
}
