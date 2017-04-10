package entity;

public class Site {
	
	private String SiteID;
	private String RouteID;
	private String SiteName;
	private String Sequence;
	private String PassageNum;
	
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

	public String getSequence() {
		return Sequence;
	}

	public void setSequence(String sequence) {
		Sequence = sequence;
	}

	public String getPassageNum() {
		return PassageNum;
	}

	public void setPassageNum(String passageNum) {
		PassageNum = passageNum;
	}

	public  Site(){}
	
	public  Site(String SiteID,String RouteID,String SiteName,String Sequence,String PassageNum){
		this.SiteID=SiteID;
		this.RouteID=RouteID;
		this.SiteName=SiteName;
		this.Sequence=Sequence;
		this.PassageNum=PassageNum;
	}
	
	

}
