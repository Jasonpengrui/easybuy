package cn.tarena.fh.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import cn.tarena.fh.pojo.Powder;

public interface PowderMapper {

	@Select("select * from powder")
	public List<Powder> findAllPowders();
}
