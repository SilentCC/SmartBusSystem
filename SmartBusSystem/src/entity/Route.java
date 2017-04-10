package entity;

public class Route {
	
	   private String RouteID;//��·���(����)
	   private String RouteName;//��·���
	   private String StartPlace;//���
	   private String EndPlace;//�յ�
	   private String PassageNum;//�˿�����ע

	   public Route(){
	   }

	   public Route(String RouteID,String RouteName,String StartPlace,String EndPlace,String PassageNum){
		
		   this.RouteID=RouteID;
	   this.RouteName = RouteName;
	   this.StartPlace = StartPlace; 
	   this.EndPlace = EndPlace;
	   this.PassageNum = PassageNum;
	  
	   }

	   public String getRouteID() {
	   return RouteID;
	   }

	   public void setRouteID(String routeID) {
	   RouteID = routeID;
	   }

	   public String getRouteName() {
	   return RouteName;
	   }

	   public void setRouteName(String routeName) {
	   RouteName = routeName;
	   }

	   public String getStartPlace() {
	   return StartPlace;
	   }

	   public void setStartPlace(String startPlace) {
	   StartPlace = startPlace;
	   }

	   public String getEndPlace() {
	   return EndPlace;
	   }

	   public void setEndPlace(String endPlace) {
	   EndPlace = endPlace;
	   }

	   public String getPassageNum() {
	   return PassageNum;
	   }

	   public void setPassageNum(String passageNum) {
	   PassageNum = passageNum;
	   }

	
	

}
