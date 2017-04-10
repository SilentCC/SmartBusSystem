package com.action;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import entity.Executives;
import entity.Employee;
import entity.Driver;
import dao.*;

import java.util.*;

import entity.*;

public class AddRoute extends ActionSupport{
	
	//路线相关信息
	private String routeID;
	private String routeName;
	private String startPlace;
	private String endPlace;
	private String passengeNum;
	//Dao类
	
	private RouteManage routeManage;

	public String getRouteID() {
		return routeID;
	}

	public void setRouteID(String routeID) {
		this.routeID = routeID;
	}

	public String getRouteName() {
		return routeName;
	}

	public void setRouteName(String routeName) {
		this.routeName = routeName;
	}

	public String getStartPlace() {
		return startPlace;
	}

	public void setStartPlace(String startPlace) {
		this.startPlace = startPlace;
	}

	public String getEndPlace() {
		return endPlace;
	}

	public void setEndPlace(String endPlace) {
		this.endPlace = endPlace;
	}

	public String getPassengeNum() {
		return passengeNum;
	}

	public void setPassengeNum(String passengeNum) {
		this.passengeNum = passengeNum;
	}

	public RouteManage getRouteManage() {
		return routeManage;
	}

	public void setRouteManage(RouteManage routeManage) {
		this.routeManage = routeManage;
	}
	
	public String execute(){
		
		Route route;
		route=new Route(routeID,routeName,startPlace,endPlace,passengeNum);
		
		if(routeManage.AddRoute(route)==1)
			return SUCCESS;
		else
			return ERROR;
		
	}
	
	

}
