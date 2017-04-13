package entity;

public class CountRouteInfo {
	
	private String Week;
	private int NumPerson;
	private String RouteID;
	public String getRouteID() {
		return RouteID;
	}
	public void setRouteID(String routeID) {
		RouteID = routeID;
	}
	public String getWeek() {
		return Week;
	}
	public void setWeek(String week) {
		Week = week;
	}
	public int getNumPerson() {
		return NumPerson;
	}
	public void setNumPerson(int numPerson) {
		NumPerson = numPerson;
	}
	
	public CountRouteInfo(){}
	
	public CountRouteInfo(String Week,int NumPerson,String RouteID){
		this.Week=Week;
		this.NumPerson=NumPerson;
		this.RouteID=RouteID;
	}
	

}
