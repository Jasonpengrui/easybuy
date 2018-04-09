package cn.tarena.fh.controller;

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

import cn.tarena.fh.pojo.User;
import cn.tarena.fh.service.PreUserService;
import cn.tarena.fh.tool.Md5Utils;

/**
 * 具体拦截的页面跳转页面可以修改 看具体页面
 *
 */

@Controller
public class PreLoginController {
	
	@Autowired
	private PreUserService preUserService;

	@RequestMapping("/tologin")//去登陆页面
	public String tologin(){
		return "/login";
	}
	
	@RequestMapping("/toregist")//去注册页面
	public String toregist(){
		return "/regist";
	}
	
	@RequestMapping("/regist")
	public String registAction(HttpSession session,User user,Model model){
		User us=preUserService.saveRegist(user);
		if(us!=null){//注册成功
			model.addAttribute("user",us);
			session.setAttribute("user", us);
			return "index";//跳转到首页
		}else{//注册失败
			model.addAttribute("msg","注册失败，请重新注册");
			model.addAttribute("preUser",user);//如果要回显，就用这个
			return "toregist";
		}
	}
	
	

	
	@RequestMapping("/login")
	public String loginAction(HttpSession session, User user,Model model){
		User us=preUserService.login(user);
		if(us!=null){//登录成功
			model.addAttribute("user",us);
			session.setAttribute("user", us);
			return "index";//跳转到首页
		}else{//登录失败 
			
			model.addAttribute("msg","登录失败，请重新登录");
			model.addAttribute("preUser",user);//如果要回显，就用这个
			model.addAttribute("errorInfo",user);//如果要回显，就用这个
			return "tologin";
		}
	}
	/*public String loginAction(HttpSession session, String username,String password,Model model){
		
		if(StringUtils.isEmpty(username) && StringUtils.isEmpty(password)){
			model.addAttribute("errorInfo", "用户名和密码不能为空");
			return "/login";
		}
		Subject subject = SecurityUtils.getSubject();
		UsernamePasswordToken token = new UsernamePasswordToken(username,password);
		try {
			subject.login(token);//通过令牌来进行验证登录
			User user = (User) subject.getPrincipal();
			
			if(user.getState()==0){
				
				session.setAttribute("user", user);
				return "redirect:/toproductList";//跳转到首页 ，可能到时候需要修改
			}else{
				model.addAttribute("errorInfo", "用户名或者密码错误");
				return "/login";
			}
		} catch (AuthenticationException e) {
			model.addAttribute("errorInfo", "用户名或者密码错误");
			return "/login";
		}
	}*/
	
	@RequestMapping("/welcome")
	public String index(){
		return "redirect:/toproductList";
	}
	
	@RequestMapping("/logout")
	public String  backLogout(HttpSession session){
		session.removeAttribute("user");
		/*Subject subject=SecurityUtils.getSubject();
		
		if(subject.isAuthenticated()){
		
		session.removeAttribute("user");
		subject.logout();
		}*/
		return "redirect:/toproductList";
	}
	

}
