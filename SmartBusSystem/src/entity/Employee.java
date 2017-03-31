package entity;

public class Employee {
	
	private String EmployeeID;
	private String Name;
	private String Sex;
	private String Department;
	private String EGroup;
	private String DutyRosterID;
	private String Phone;
	private String Address;
	
	public String getEmployeeID() {
		return EmployeeID;
	}
	public void setEmployeeID(String employeeID) {
		EmployeeID = employeeID;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getSex() {
		return Sex;
	}
	public void setSex(String sex) {
		Sex = sex;
	}
	public String getDepartment() {
		return Department;
	}
	public void setDepartment(String department) {
		Department = department;
	}
	public String getEGroup() {
		return EGroup;
	}
	public void setEGroup(String eGroup) {
		EGroup = eGroup;
	}
	public String getDutyRosterID() {
		return DutyRosterID;
	}
	public void setDutyRosterID(String dutyRosterID) {
		DutyRosterID = dutyRosterID;
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

	public Employee()
	{
		
	}
	public Employee( String EmployeeID,String Name,String Sex,String Department,String EGroup,
			String DutyRosterID, String Phone, String Address){
		this.EmployeeID=EmployeeID;
		this.Name=Name;
		this.Sex=Sex;
		this.Department=Department;
		this.EGroup=EGroup;
		this.DutyRosterID=DutyRosterID;
		this.Phone=Phone;
		this.Address=Address;
		
		
	}

}
