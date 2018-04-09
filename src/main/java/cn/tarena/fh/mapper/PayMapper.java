package cn.tarena.fh.mapper;

import org.apache.ibatis.annotations.Update;

public interface PayMapper {
	@Update("update order_p set paystate=1 where orderId=#{orderId} ")
	public void changePayState(String orderId);

}
