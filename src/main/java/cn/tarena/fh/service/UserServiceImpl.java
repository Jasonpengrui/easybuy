package cn.tarena.fh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tarena.fh.mapper.UserInfoMapper;
import cn.tarena.fh.mapper.UserMapper;
import cn.tarena.fh.pojo.User;
import cn.tarena.fh.pojo.UserInfo;
@Service
public class UserServiceImpl implements UserService{

	@Autowired
	private UserMapper userMapper;
	
	@Autowired
	private UserInfoMapper userInfoMapper;
	
	@Override
	public List<User> findAll() {
		// TODO Auto-generated method stub
		return userMapper.findAll();
	}

	@Override
	public void changeState(Integer i, String[] ids) {
		// TODO Auto-generated method stub
		userMapper.changeState(i,ids);
	}

	@Override
	public void delete(String userId) {
		userMapper.delete(userId);
		
		userInfoMapper.delete(userId);
	}

	@Override
	public User findOne(String userId) {
		// TODO Auto-generated method stub
		return userMapper.findOne(userId);
	}

	@Override
	public User login(String username, String password) {

	return	userMapper.login(username,password);
	}

	@Override
	public User findOneByUsername(String username) {

	return userMapper.findOneByUsername(username);
	}



	public void update(User user) {
		userMapper.update(user);
		UserInfo userInfo = user.getUserInfo();
		userInfo.setUserInfoId(user.getUserId());
		userInfoMapper.update(userInfo);
	}

	@Override
	public List<String> findPrivilegeByUserId(String userId) {

		return userMapper.findPrivilegeByUserId(userId);
	
	}

	@Override
	public List<String> findPowderByUserId(String userId) {
		return userMapper.findPowderByUserId(userId);
	
	}
}
