package entity;

public class Site {
	private String SiteID;//վ����(����)	
	private String RouteID;//��·���(����)
	private String SiteName;//վ�����
	private String ArrivalTime;//��վʱ��
	private String Sequence;//���к�
	private String PassageNum;//�˿�����ע

	public Site(){
	}

	public Site(String RouteID,String SiteName,String ArrivalTime,String Sequence,
	String PassageNum){
	this.RouteID = RouteID; 
	this.SiteName = SiteName; 
	this.ArrivalTime = ArrivalTime;
	this.Sequence = Sequence; 
	this.PassageNum = PassageNum; 
	
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

	public String getArrivalTime() {
	return ArrivalTime;
	}

	public void setArrivalTime(String arrivalTime) {
	ArrivalTime = arrivalTime;
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


}
