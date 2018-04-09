package cn.tarena.fh.pojo;

public class Powder extends BaseEntity{

	private String powderId;
	
	//权限名称
	private String name;
	private String remarks;
	private boolean checked;
	
	
	public boolean isChecked() {
		return checked;
	}


	public void setChecked(boolean checked) {
		this.checked = checked;
	}


	public String getId(){
		return powderId;
	}


	public String getPowderId() {
		return powderId;
	}


	public void setPowderId(String powderId) {
		this.powderId = powderId;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getRemarks() {
		return remarks;
	}


	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}
	
	 
}
