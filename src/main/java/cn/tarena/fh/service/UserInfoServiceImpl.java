package cn.tarena.fh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tarena.fh.mapper.UserInfoMapper;
import cn.tarena.fh.pojo.UserInfo;
@Service
public class UserInfoServiceImpl implements UserInfoService{
	@Autowired
	private UserInfoMapper userInfoMapper;

	@Override
	public List<UserInfo> findAll() {
		return userInfoMapper.findAll();
	}

	@Override
	public void update(UserInfo userInfo) {
		userInfoMapper.update(userInfo);
		
	}

}
