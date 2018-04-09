package cn.tarena.fh.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import cn.tarena.fh.pojo.Product;
import cn.tarena.fh.pojo.Type;

public interface ProductMapper {

	
	List<Product> findAllProduct();

	public void changeStation(@Param("station") String station, @Param("prodId") String prodId);

	public void deleteProduct(String prodId);

	// order_No
	@Insert("insert into product (prod_id,name,price,category,pnum,description,station,Create_Time) values(#{prodId},#{name},#{price},#{category},#{pnum},#{description},#{station},#{createTime})")
	public void saveProduct(Product product);

	@Select("SELECT category FROM product GROUP BY category")
	List<String> selectDescription();

	@Update("UPDATE product SET pnum=#{pnum} WHERE prod_id=#{prodId}")
	int updatePnum(@Param("prodId") String id, @Param("pnum") Integer newPnum);

	Product findOne(String prodId);

	@Update("UPDATE product SET NAME=#{name},price=#{price},category=#{category},pnum=#{pnum},description=#{description},station=#{station} WHERE prod_Id=#{prodId}")
	void changeProduct(Product product);



	void saveUrl(@Param("prodId") String prodId,@Param("list") List<String> list);

	@Select("select url from img where prod_id=#{prodId}")
	List<String> findAllUrlById(String prodId);

	List<Type> findAllLike();

	List<Type> findAllProductByType();

	List<Product> findAllProductByKeyWrod(@Param("category")String category,@Param("keyword") String keyword);

	List<Product> findProductByLike();

	List<Product> findProductByUserId(String userId);

	@Insert("insert into user_product (user_id,prod_id) values (#{userId},#{prodId})")
	void insertLike(@Param("userId")String userId, @Param("prodId")String prodId);
	
}
