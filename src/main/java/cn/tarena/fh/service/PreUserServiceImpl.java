package cn.tarena.fh.service;

import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tarena.fh.mapper.PreUserMapper;
import cn.tarena.fh.pojo.User;
import cn.tarena.fh.tool.Md5Utils;

@Service
public class PreUserServiceImpl implements PreUserService {

	@Autowired
	private PreUserMapper preUserMapper;
	
	//进行信息的操作
	@Override
	public User saveRegist(User user) {
		user.setUserId(UUID.randomUUID().toString());//生成id
		user.setPassword(Md5Utils.getMd5(user.getPassword(), user.getUsername()));
		int result1 = preUserMapper.registPreUser(user);//插入user表
		int result2 = preUserMapper.registPreUserInfo(user);//插入userinfo表
		if(result1==1&&result2==1){
			return user;
		}else{
			return null;
		}
	}

	@Override
	public User login(User user) {
		user.setPassword(Md5Utils.getMd5(user.getPassword(), user.getUsername()));
		return preUserMapper.login(user);
	}

}
