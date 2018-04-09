package cn.tarena.fh.controller;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cn.tarena.fh.pojo.User;
import cn.tarena.fh.service.UserService;
import cn.tarena.fh.tool.ExcelUser;


@Controller
@RequestMapping("/back/user")
public class UserController extends BaseController {
	@Autowired
	private UserService userService;
	
	//跳转用户列表
		@RequestMapping("/userList")
		public String userList(Model model){
			List<User> users = userService.findAll();
			
			for (User user : users) {
				System.out.println(user);
			}
			model.addAttribute("users",users);
			return "/back/usermanager/jUserList";
		}
		
		//用户禁用
		@RequestMapping("/stop")
		public String stop(@RequestParam(value="userId",required=false)String[] ids){
			if(ids!=null){
				userService.changeState(0, ids);
			}
			return "redirect:/back/user/userList";
		}
		
		//用户开启
		@RequestMapping("/start")
		public String start(@RequestParam(value="userId",required=false)String[] ids){
			if(ids!=null){
				userService.changeState(1, ids);
			}
			return "redirect:/back/user/userList";
		}
		
		//用户删除
		@RequestMapping("/delete")
		public String delete(String userId){

				userService.delete(userId);

			return "redirect:/back/user/userList";
		}
			
		//跳转User详情页面
		@RequestMapping("/toview")
		public String toView(String userId,Model model){

			User user = userService.findOne(userId);
			model.addAttribute("user",user);
			return "back/usermanager/jUserView";
		}
		//下载
		@RequestMapping("/download")
		public String download() throws Exception{
			List<User> users = userService.findAll();//获取业务数据集
			ExcelUser.download(users);
			return "redirect:/back/user/userList";
		}
}
