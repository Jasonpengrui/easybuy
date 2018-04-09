package cn.tarena.fh.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import cn.tarena.fh.pojo.Powder;
import cn.tarena.fh.pojo.User;
import cn.tarena.fh.service.PowderService;
import cn.tarena.fh.service.UserPowderService;

@Controller
@RequestMapping("/back/userpowder")
public class UserPowderController {
	
	@Autowired
	private UserPowderService userPowderService;
	@Autowired
	private PowderService powderService;

	@RequestMapping("/powderSet")
	public String findAll(Model model) {
		List<User> userPowderList = userPowderService.findAllAdmins();
		model.addAttribute("userPowderList", userPowderList);
		return "/back/userpowder/powderSet";
	}
	
	@RequestMapping("/stop")
	public String startAction(@RequestParam(value="userId", required=false)String[] userIds) {
		if(userIds != null) {
			userPowderService.changeState(userIds, 0);
		}
		return "redirect:/back/userpowder/powderSet";
	}
	
	@RequestMapping("/start")
	public String stopAction(@RequestParam(value="userId", required=false)String[] userIds) {
		if(userIds != null) {
			userPowderService.changeState(userIds, 1);
		}
		return "redirect:/back/userpowder/powderSet";
	}
	
	@RequestMapping("/adminInsert")
	public String tocreate() {
		return "/back/userpowder/adminInsert";
	}
	
	@RequestMapping("/save")
	public String saveUserAdmin(User user) {
		userPowderService.saveUserAdmin(user);
		return "redirect:/back/userpowder/powderSet";
	}
	
	@RequestMapping("/delete")
	public String deleteUserAdmin(@RequestParam(value="userId", required=false)String[] userIds) {
		userPowderService.deleteUserAdmin(userIds);
		return "redirect:/back/userpowder/powderSet";
	}
	
	@RequestMapping("/toupdate")
	public String toupdate(String userId, Model model) {
		User user = userPowderService.findOne(userId);
		model.addAttribute("user", user);
		return "/back/userpowder/powderUpdate";
	}
	
	@RequestMapping("/update")
	public String updateUserAdmin(User user) {
		userPowderService.updateUserAdmin(user);
		return "redirect:/back/userpowder/powderSet";
	}
	
	@RequestMapping("/tomodule")
	public String tomodule(String userId, Model model) throws JsonProcessingException {
		List<String> powderIds = userPowderService.findPowderIdsById(userId);
		List<Powder> powders = powderService.findAllPowders();
		
		for(Powder powder : powders) {
			if(powderIds.contains(powder.getPowderId())) {
				powder.setChecked(true);
			}
		}
		ObjectMapper mapper = new ObjectMapper();
		String jsonString = mapper.writeValueAsString(powders);
		model.addAttribute("zTreeJson", jsonString);
		model.addAttribute("userId", userId);
		return "/back/userpowder/userpowder";
	}
	
	@RequestMapping("/saveUserPowders")
	public String saveUserPowderIds(String userId, @RequestParam(required=false)String[] powderIds) {
		if(powderIds != null) {
			userPowderService.saveUserPowderIds(userId, powderIds);
		}
		return "redirect:/back/userpowder/powderSet";
	}
}
