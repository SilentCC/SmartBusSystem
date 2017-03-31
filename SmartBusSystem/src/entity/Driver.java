package entity;

public class Driver {
	
	 	private String DriverID ;
	 	
		private String Pwd ;
	 	private String DriverName;
	 	private String Sex;
	 	private String Phone;
	
	 	
	 	public String getDriverID() {
			return DriverID;
		}
		public void setDriverID(String driverID) {
			DriverID = driverID;
		}
		public String getPwd() {
			return Pwd;
		}
		public void setPwd(String pwd) {
			Pwd = pwd;
		}
		public String getDriverName() {
			return DriverName;
		}
		public void setDriverName(String driverName) {
			DriverName = driverName;
		}
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
		
		public Driver(){
			
		}
		public Driver(String DriverID ,String Pwd,String DriverName,String Sex,String Phone){
			this.DriverID=DriverID;
			this.Pwd=Pwd;
			this.DriverName=DriverName;
			this.Sex=Sex;
			this.Phone=Phone;
			
		}

	 	
	 	

}
