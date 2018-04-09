package cn.tarena.fh.service;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tarena.fh.mapper.UserPowderMapper;
import cn.tarena.fh.pojo.User;
import cn.tarena.fh.tool.Md5Utils;

@Service
public class UserPowderServiceImpl implements UserPowderService {

	@Autowired
	private UserPowderMapper userPowderMapper;
	
	public List<User> findAllAdmins() {
		return userPowderMapper.findAllAdmins();
	}

	public void changeState(String[] userIds, Integer i) {
		userPowderMapper.changeState(userIds, i);
	}

	public void saveUserAdmin(User user) {
		user.setUserId(UUID.randomUUID().toString());
		user.setPassword(Md5Utils.getMd5(user.getPassword(), user.getUsername()));
		user.setPrivilege("1");
		user.setCreateTime(new Date());
		userPowderMapper.saveUserAdmin(user);
	}

	public void deleteUserAdmin(String[] userIds) {
		userPowderMapper.deleteUserAdmin(userIds);
	}

	public void updateUserAdmin(User user) {
		userPowderMapper.updateUserAdmin(user);
	}

	public User findOne(String userId) {
		return userPowderMapper.findOne(userId);
	}

	@Override
	public List<String> findPowderIdsById(String userId) {
		return userPowderMapper.findPowderIdsById(userId);
	}

	@Override
	public void saveUserPowderIds(String userId, String[] powderIds) {
		userPowderMapper.deleteUserPowderIds(userId);
		if(powderIds.length > 0) {
			userPowderMapper.saveUserPowderIds(userId, powderIds);
		}
	}

}
