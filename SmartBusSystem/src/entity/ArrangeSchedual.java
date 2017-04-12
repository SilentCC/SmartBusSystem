package entity;

public class ArrangeSchedual {
	private String DutyRosterID;//�Ű���(����)

	private String CarID;//�������
	private String RouteID;//��·���
	private String DriverID;//˾����
	private String DriverName;//˾������
	private String Week;//�ܴ�
	private String DayOfWeek;//����
	private String StartTime;//��ʼʱ��
	private String EndTime;//����ʱ��ע

	public ArrangeSchedual(){
	}

	public ArrangeSchedual(String DutyRosterID,String CarID,String RouteID,String DriverID,String DriverName,
	String Week,String DayOfWeek,String StartTime,String EndTime){
		
	this.DutyRosterID=DutyRosterID;
	this.CarID = CarID;
	this.RouteID = RouteID;
	this.DriverID = DriverID;
	this.DriverName = DriverName;
	this.Week = Week;
	this.DayOfWeek = DayOfWeek;
	this.StartTime = StartTime;
	this.EndTime = EndTime;
	
	}

	public String getDutyRosterID() {
	return DutyRosterID;
	}

	public void setDutyRosterID(String dutyRosterID) {
	DutyRosterID = dutyRosterID;
	}

	public String getCarID() {
	return CarID;
	}

	public void setCarID(String carID) {
	CarID = carID;
	}

	public String getRouteID() {
	return RouteID;
	}

	public void setRouteID(String routeID) {
	RouteID = routeID;
	}

	public String getDriverID() {
	return DriverID;
	}

	public void setDriverID(String driverID) {
	DriverID = driverID;
	}

	public String getDriverName() {
	return DriverName;
	}

	public void setDriverName(String driverName) {
	DriverName = driverName;
	}

	public String getWeek() {
	return Week;
	}

	public void setWeek(String week) {
	Week = week;
	}

	public String getDayOfWeek() {
	return DayOfWeek;
	}

	public void setDayOfWeek(String dayOfWeek) {
	DayOfWeek = dayOfWeek;
	}

	public String getStartTime() {
	return StartTime;
	}

	public void setStartTime(String startTime) {
	StartTime = startTime;
	}

	public String getEndTime() {
	return EndTime;
	}

	public void setEndTime(String endTime) {
	EndTime = endTime;
	}




}
