package cn.tarena.fh.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import cn.tarena.fh.pojo.User;

public interface UserMapper {
	
	/**
	 * 查找所有的用户对象
	 * @return 返回所有用户对象的List
	 */
	public List<User> findAll();

	/**
	 * 根据用户的Id
	 * @param userId
	 * @return
	 */
	public User findOne(String userId);


	public void changeState(@Param("state")Integer i, @Param("userIds")String[] ids);

	public User login(@Param("username")String username,@Param("password")String password);

	public void delete(String userId);

	public User findOneByUsername(String username);


	@Update("update user set password=#{password} where user_id=#{userId}")
	public void update(User user);

	@Select("select privilege from User where user_id=#{userId}")
	public List<String> findPrivilegeByUserId(String userId);

	@Select("select powder.name from user_powder,powder where user_powder.powder_id=powder.powder_id and user_powder.user_id=#{userId}")
	public List<String> findPowderByUserId(String userId);

}
