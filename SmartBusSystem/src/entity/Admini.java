package entity;

public class Admini {
	
	private String AdminID; //����ԱID(����)	
	private String Pwd;//����

	public Admini(){
	}

	public Admini(String Pwd){
	this.Pwd = Pwd;

	}

	public String getAdminID() {
	return AdminID;
	}

	public void setAdminID(String adminID) {
	AdminID = adminID;
	}

	public String getPwd() {
	return Pwd;
	}

	public void setPwd(String pwd) {
	Pwd = pwd;
	}


}
