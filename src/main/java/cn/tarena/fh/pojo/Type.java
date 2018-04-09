package cn.tarena.fh.pojo;

public class Type {

	private String name;
	private Integer value;

	@Override
	public String toString() {
		return "Type [name=" + name + ", value=" + value + "]";
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getValue() {
		return value;
	}
	public void setValue(Integer value) {
		this.value = value;
	}

	
	
}
