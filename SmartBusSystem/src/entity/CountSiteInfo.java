package entity;

public class CountSiteInfo {
	
	private String Week;
	private int NumPerson;
	private String SiteID;
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
	public String getSiteID() {
		return SiteID;
	}
	public void setSiteID(String siteID) {
		SiteID = siteID;
	}
	
	public CountSiteInfo(){}
	
	public CountSiteInfo(String Week,int NumPerson,String SiteID){
		this.Week=Week;
		this.NumPerson=NumPerson;
		this.SiteID=SiteID;
	}
	

}
