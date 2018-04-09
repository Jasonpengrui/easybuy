package cn.tarena.fh.service;

import cn.tarena.fh.pojo.User;

public interface PreUserService {

	User saveRegist(User user);

	User login(User user);

}
