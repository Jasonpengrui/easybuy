package cn.tarena.fh.pojo;

import java.util.Arrays;
import java.util.List;

public class Product  extends BaseEntity{
 
	private String prodId;
	private String name;
	private String category;
	private Double price;
	private Integer pnum;
	private String description;
	private String page;


	private List<String> path;
	
	//喜爱数
	private Integer like;
	
	private String station;
	public void setStation(String station) {
		this.station = station;
	}

	public Integer getLike() {
		return like;
	}

	public void setLike(Integer like) {
		this.like = like;
	}

	
	@Override
	public int hashCode() {
		return prodId==null?0:prodId.hashCode();
	}
	@Override
	public boolean equals(Object obj) {
		if(this==obj){
			return true;
		}
		if(obj==null){
			return false;
		}
		//判断obj是否为Product
		if(!(obj instanceof Product)){
			//obj不是Product类的的对象
			return false;
		}
		//说明obj是Product类创建的对象
		Product other = (Product)obj;
		if(prodId!=null&&prodId.equals(other.getProdId())){
			//说明两个对象id相同
			return true;
		}
		return false;
	}


	public String getProdId() {
		return prodId;
	}

	public void setProdId(String prodId) {
		this.prodId = prodId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public Integer getPnum() {
		return pnum;
	}

	public void setPnum(Integer pnum) {
		this.pnum = pnum;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public List<String> getPath() {
		return path;
	}

	public void setPath(List<String> path) {
		this.path = path;
	}

	public String getStation() {
		return station;
	}

	public String getPage() {
		return page;
	}

	public void setPage(String page) {
		this.page = page;
	}

	@Override
	public String toString() {
		return "Product [prodId=" + prodId + ", name=" + name + ", category=" + category + ", price=" + price
				+ ", pnum=" + pnum + ", description=" + description + ", page=" + page + ", path=" + path + ", like="
				+ like + ", station=" + station + "]";
	}

	



	
	
	
}
