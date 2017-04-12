package entity;

public class Site {
	
	private String SiteID;
	private String RouteID;
	private String SiteName;
	private String PassageNum;
	private double Longitude;
	private double Latitude;
	
	


	public double getLongitude() {
		return Longitude;
	}

	public void setLongitude(double longitude) {
		Longitude = longitude;
	}

	public double getLatitude() {
		return Latitude;
	}

	public void setLatitude(double latitude) {
		Latitude = latitude;
	}

	public String getSiteID() {
		return SiteID;
	}

	public void setSiteID(String siteID) {
		SiteID = siteID;
	}

	public String getRouteID() {
		return RouteID;
	}

	public void setRouteID(String routeID) {
		RouteID = routeID;
	}

	public String getSiteName() {
		return SiteName;
	}

	public void setSiteName(String siteName) {
		SiteName = siteName;
	}


	public String getPassageNum() {
		return PassageNum;
	}

	public void setPassageNum(String passageNum) {
		PassageNum = passageNum;
	}

	public  Site(){}
	
	public  Site(String SiteID,String RouteID,String SiteName,String PassageNum,double Longitude,double Latitude){
		this.SiteID=SiteID;
		this.RouteID=RouteID;
		this.SiteName=SiteName;
		
		this.PassageNum=PassageNum;
		this.Longitude=Longitude;
		this.Latitude=Latitude;
	}
	
	

}
