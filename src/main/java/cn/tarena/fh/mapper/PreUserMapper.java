package cn.tarena.fh.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import cn.tarena.fh.pojo.User;

public interface PreUserMapper {

	//用户注册默认启用，当前插入user表
	@Insert("insert into user(user_id,username,password,state,previlege) values(#{userId},#{username},#{password},1,1)")
	int registPreUser(User user);
	
	@Insert("insert into userinfo(user_info_id,email,telephone) values(#{userId},#{userInfo.email},#{userInfo.telephone})")
	int registPreUserInfo(User user);

	@Select("select * from user where username=#{username} and password=#{password} and state=1 and previlege=1")
	User login(User user);


}
