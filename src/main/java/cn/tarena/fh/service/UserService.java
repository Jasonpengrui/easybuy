package cn.tarena.fh.service;

import java.util.List;

import cn.tarena.fh.pojo.User;

public interface UserService {

	public List<User> findAll();

	public void changeState(Integer i, String[] ids);


	public User findOne(String userId);

	public User login(String username, String password);

	public void delete(String userId);

	public User findOneByUsername(String username);

	public void update(User user);

	public List<String> findPrivilegeByUserId(String userId);

	public List<String> findPowderByUserId(String userId);


}
