package entity;

public class Executives {
	
	private String ExecutiveID;//������Ա���
	private String pwd;//����
	private String ExecutiveName;//姓名
	private String Sex;//性别
	private String Phone;//电话号码
	private String Address;//地址

	public String getSex() {
		return Sex;
	}
	public void setSex(String sex) {
		Sex = sex;
	}
	public String getPhone() {
		return Phone;
	}
	public void setPhone(String phone) {
		Phone = phone;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public String getExecutiveName() {
		return ExecutiveName;
	}
	public void setExecutiveName(String executiveName) {
		ExecutiveName = executiveName;
	}
	public String getExecutiveID() {
		return ExecutiveID;
	}
	public void setExecutiveID(String executiveID) {
		ExecutiveID = executiveID;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}


	public  Executives(){}
	public Executives(String ExecutiveID,String pwd,String ExecutiveName,String Sex,String Phone,String Address)
	{
		this.ExecutiveID=ExecutiveID;
		this.pwd=pwd;
		this.ExecutiveName=ExecutiveName;
		this.Sex=Sex;
		this.Phone=Phone;
		this.Address=Address;
	}
	
	

}
