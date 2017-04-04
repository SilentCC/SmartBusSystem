package entity;

public class Passenger {
	private String PassengerID;//�˳�Ա����ID(����)
	private String RouteID;//��·���
	private String SiteID;//վ����
	private String CarID;//�������
	private String Location;//�ϳ�λ��
	private String Time;//�ϳ�ʱ��ע
	private String Pwd;
	private String Name;
	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getPwd() {
		return Pwd;
	}

	public void setPwd(String pwd) {
		Pwd = pwd;
	}

	public Passenger(){
	}

	public Passenger(String RouteID,String SiteID,String CarID,String Location,
	String Time,String Pwd,String Name){
	this.RouteID = RouteID;
	this.SiteID = SiteID;
	this.CarID = CarID;
	this.Location = Location;
	this.Time = Time; 
	this.Pwd=Pwd;
	this.Name=Name;
	
	}

	public String getPassengerID() {
	return PassengerID;
	}

	public void setPassengerID(String passengerID) {
	PassengerID = passengerID;
	}

	public String getRouteID() {
	return RouteID;
	}

	public void setRouteID(String routeID) {
	RouteID = routeID;
	}

	public String getSiteID() {
	return SiteID;
	}

	public void setSiteID(String siteID) {
	SiteID = siteID;
	}

	public String getCarID() {
	return CarID;
	}

	public void setCarID(String carID) {
	CarID = carID;
	}

	public String getLocation() {
	return Location;
	}

	public void setLocation(String location) {
	Location = location;
	}

	public String getTime() {
	return Time;
	}

	public void setTime(String time) {
	Time = time;
	}


}
