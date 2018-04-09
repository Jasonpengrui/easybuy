package cn.tarena.fh.service;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.tarena.fh.mapper.ProductMapper;
import cn.tarena.fh.pojo.Product;
import cn.tarena.fh.pojo.Type;

@Service
public class ProductServiceImpl implements ProductService {

	
	@Autowired
	private ProductMapper productMapper;
	
	public List<Product> findAllProduct() {
		List<Product> list=productMapper.findAllProduct();
		
		
	return list;
	}
	
	public void changeStation(String station, String prodId) {
		productMapper.changeStation(station, prodId);
		
	}

	public void deleteProduct(String prodId) {
		productMapper.deleteProduct(prodId);
		
	}



	public void save(Product product,List<String> list) {
		String prodId=UUID.randomUUID().toString();
		product.setProdId(prodId);
		Date date=new Date();
		product.setCreateTime(date);
		if(list!=null&&list.size()>0){
			
			productMapper.saveUrl(prodId,list);
		}
		productMapper.saveProduct(product);
		
	}

	@Override
	public List<String> selectDescription() {
		
		return productMapper.selectDescription();
	}

	@Override
	public boolean updatePnum(String id, Integer newPnum) {
		// TODO Auto-generated method stub
		return productMapper.updatePnum(id,newPnum)>0;
	}

	@Override
	public Product fingdOne(String prodId) {
		// TODO Auto-generated method stub
		return productMapper.findOne(prodId);
	}

	@Override
	public void changeProduct(Product product) {
		// TODO Auto-generated method stub
		productMapper.changeProduct(product);
	}

	@Override
	public List<Type> findAllLike() {

	return  productMapper.findAllLike();
	
	}

	@Override
	public List<Type> findAllProductByType() {
		return productMapper.findAllProductByType();
	}

	@Override
	public List<Product> findAllProductByKeyWrod(String category, String keyword) {
		List<Product> p= productMapper.findAllProductByKeyWrod(category,keyword);
for (Product product : p) {
	System.out.println(product+"~~~~~~~~~~~~~~~~~~~~~");
	
}
return p;
	
	}

	@Override
	public List<Product> findProductByLike() {
		// TODO Auto-generated method stub
		return productMapper.findProductByLike();
	}

	@Override
	public List<Product> findProductByUserId(String userId) {
		return productMapper.findProductByUserId(userId);
	}

	@Override
	public void insertLike(String userId, String prodId) {
		productMapper.insertLike(userId, prodId);
	}

	




}

