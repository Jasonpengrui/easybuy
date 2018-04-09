package cn.tarena.fh.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tarena.fh.mapper.PayMapper;

@Service
public class PayServiceImpl implements PayService {

	@Autowired
	private PayMapper payMapper;
	
	@Override
	public void changePayState(String orderId) {
		// TODO Auto-generated method stub
		payMapper.changePayState(orderId);
	}

	
		
	

	
	

}
