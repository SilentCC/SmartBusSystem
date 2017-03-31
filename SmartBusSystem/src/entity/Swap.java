package entity;

public class Swap {
	
	private String PassengerID;//�˳�Ա����ID(����)
	private String StaffID;//Ա��IDע

	public Swap(){
	}

	public Swap(String StaffID){
	this.StaffID = StaffID;
	
	}

	public String getPassengerID() {
	return PassengerID;
	}

	public void setPassengerID(String passengerID) {
	PassengerID = passengerID;
	}

	public String getStaffID() {
	return StaffID;
	}

	public void setStaffID(String staffID) {
	StaffID = staffID;
	}

	

}
