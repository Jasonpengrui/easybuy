package cn.tarena.fh.service;

import java.util.List;

import cn.tarena.fh.pojo.Product;
import cn.tarena.fh.pojo.Type;

public interface ProductService {

	List<Product> findAllProduct();
	
	public void changeStation(String station,String prodId);

	public void deleteProduct(String prodId);

	public void save(Product products,List<String> list);

	List<String> selectDescription();

	boolean updatePnum(String id, Integer newPnum);

	Product fingdOne(String prodId);


	
	void changeProduct(Product product);

	List<Type> findAllLike();

	List<Type> findAllProductByType();

	List<Product> findAllProductByKeyWrod(String category, String keyword);

	List<Product> findProductByLike();

	List<Product> findProductByUserId(String userId);

	void insertLike(String userId, String prodId);
}
