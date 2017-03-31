package entity;

public class Executives {
	
	private String ExecutiveID;//������Ա���
	private String pwd;//����

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
	public Executives(String ExecutiveID,String pwd)
	{
		this.ExecutiveID=ExecutiveID;
		this.pwd=pwd;
	}
	
	

}
