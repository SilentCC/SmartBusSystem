package entity;
import java.*;
import java.sql.Date;

public class ScheduledBus {
	
	private String CarID;
	private String Brand;
	private String Seats;
	private Date DateOfRegistration;
	private Date DateOfInsurance;
	private String DriverLicense;
	private String CarLicense;
	private String RouteID;

	public String getCarID() {
		return CarID;
	}
	public void setCarID(String carID) {
		CarID = carID;
	}
	public String getBrand() {
		return Brand;
	}
	public void setBrand(String brand) {
		Brand = brand;
	}
	public String getSeats() {
		return Seats;
	}
	public void setSeats(String seats) {
		Seats = seats;
	}
	public Date getDateOfRegistration() {
		return DateOfRegistration;
	}
	public void setDateOfRegistration(Date dateOfRegistration) {
		DateOfRegistration = dateOfRegistration;
	}
	public Date getDateOfInsurance() {
		return DateOfInsurance;
	}
	public void setDateOfInsurance(Date dateOfInsurance) {
		DateOfInsurance = dateOfInsurance;
	}
	public String getDriverLicense() {
		return DriverLicense;
	}
	public void setDriverLicense(String driverLicense) {
		DriverLicense = driverLicense;
	}
	public String getCarLicense() {
		return CarLicense;
	}
	public void setCarLicense(String carLicense) {
		CarLicense = carLicense;
	}
	public String getRouteID() {
		return RouteID;
	}
	public void setRouteID(String routeID) {
		RouteID = routeID;
	}

	
	public ScheduledBus(){}
	
	public ScheduledBus(String CarID,String Brand,String Seats,Date DateOfRegistration,Date DateOfInsurance,
			String DriverLicense,String RouteID){
		this.CarID=CarID;
		this.Brand=Brand;
		this.Seats=Seats;
		this.DateOfInsurance=DateOfInsurance;
		this.DateOfRegistration=DateOfRegistration;
		this.DriverLicense=DriverLicense;
		this.RouteID=RouteID;
	
		
	}
	
	

}
