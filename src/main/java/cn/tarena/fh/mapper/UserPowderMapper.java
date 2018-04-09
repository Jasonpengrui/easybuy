package cn.tarena.fh.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import cn.tarena.fh.pojo.User;

public interface UserPowderMapper {

	public List<User> findAllAdmins();

	public void changeState(@Param("userIds")String[] userIds, @Param("state")Integer i);

	@Insert("INSERT INTO USER (user_id,username,PASSWORD,state,privilege,create_time) VALUES (#{userId},#{username},#{password},#{state},#{privilege},#{createTime})")
	public void saveUserAdmin(User user);

	public void deleteUserAdmin(String[] userIds);

	@Update("update user set username=#{username},password=#{password} where user_Id=#{userId}")
	public void updateUserAdmin(User user);

	public User findOne(String userId);

	@Select("SELECT powder_id FROM user_powder WHERE user_id=#{userId}")
	public List<String> findPowderIdsById(String userId);

	@Delete("delete from user_powder where user_id=#{userId}")
	public void deleteUserPowderIds(String userId);

	public void saveUserPowderIds(@Param("userId")String userId, @Param("powderIds")String[] powderIds);

}
