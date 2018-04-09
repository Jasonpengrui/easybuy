package cn.tarena.fh.mapper;

import java.util.List;

import cn.tarena.fh.pojo.UserInfo;

public interface UserInfoMapper {

	List<UserInfo> findAll();

	public void update(UserInfo userInfo);

	//根据id删除详情
	void delete(String userId);

	
	
}
