package entity;

public class Executives {
	
	private String ExecutiveID;//������Ա���
	private String pwd;//����
	private String ExecutiveName;//姓名
	

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
	public Executives(String ExecutiveID,String pwd,String ExecutiveName)
	{
		this.ExecutiveID=ExecutiveID;
		this.pwd=pwd;
		this.ExecutiveName=ExecutiveName;
	}
	
	

}
