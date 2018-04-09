package cn.tarena.fh.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tarena.fh.mapper.PowderMapper;
import cn.tarena.fh.pojo.Powder;

@Service
public class PowderServiceImpl implements PowderService {
	
	@Autowired
	private PowderMapper powderMapper;

	@Override
	public List<Powder> findAllPowders() {
		return powderMapper.findAllPowders();
	}

}
