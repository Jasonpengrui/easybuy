package cn.tarena.fh.service;

import java.util.List;

import cn.tarena.fh.pojo.User;

public interface UserPowderService {

	public List<User> findAllAdmins();

	public void changeState(String[] userIds, Integer i);

	public void saveUserAdmin(User user);

	public void deleteUserAdmin(String[] userIds);

	public void updateUserAdmin(User user);

	public User findOne(String userId);


	public List<String> findPowderIdsById(String userId);

	public void saveUserPowderIds(String userId, String[] powderIds);
}
