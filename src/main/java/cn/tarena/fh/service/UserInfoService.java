package cn.tarena.fh.service;

import java.util.List;

import cn.tarena.fh.pojo.UserInfo;

public interface UserInfoService {

	public List<UserInfo> findAll();

	public void update(UserInfo userInfo);
}
