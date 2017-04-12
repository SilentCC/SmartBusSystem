package entity;

public class RouteSite {
	
	private String RouteID;//线路ID
	private String RoadSite;//途径站点
	public String getRouteID() {
		return RouteID;
	}
	public void setRouteID(String routeID) {
		RouteID = routeID;
	}
	public String getRoadSite() {
		return RoadSite;
	}
	public void setRoadSite(String roadSite) {
		RoadSite = roadSite;
	}
	
	public RouteSite(){}
	
	public RouteSite(String RouteID,String RoadSite){
		 
		this.RouteID=RouteID;
		this.RoadSite=RoadSite;
	}

}
