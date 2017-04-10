package entity;

public class Passenger {
	
	private String PassengerID;
	private String Location;
	private String Pwd;
	private String Name;
	private String Phone;
	private String Sex;
	
	
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

	public Passenger(String PassengerID,String Location,String Pwd,String Name,String Sex,String Phone){
	
	
	this.PassengerID=PassengerID;
	this.Location = Location;
	this.Pwd=Pwd;
	this.Name=Name;
	this.Sex=Sex;
	this.Phone=Phone;
	
	}

	public String getPassengerID() {
	return PassengerID;
	}

	public void setPassengerID(String passengerID) {
	PassengerID = passengerID;
	}

	public String getLocation() {
	return Location;
	}

	public void setLocation(String location) {
	Location = location;
	}

}
