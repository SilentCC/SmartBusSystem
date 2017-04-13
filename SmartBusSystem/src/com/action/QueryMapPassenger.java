package com.action;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import entity.ArrangeSchedual;
import entity.Executives;
import entity.Employee;
import entity.Driver;
import entity.Route;
import dao.*;

import java.util.*;

import entity.*;

public class QueryMapPassenger extends ActionSupport{
	
	//存放所有路线信息的List
	private List<Route> RouteList;
	private RouteManage routeManage;
	public List<Route> getRouteList() {
		return RouteList;
	}
	public void setRouteList(List<Route> routeList) {
		RouteList = routeList;
	}
	public RouteManage getRouteManage() {
		return routeManage;
	}
	public void setRouteManage(RouteManage routeManage) {
		this.routeManage = routeManage;
	}
	
	public String execute(){
		
		try{
			 RouteList=routeManage.QueryAllRoute();
			
			 
		}
		catch(Exception e){
			e.printStackTrace();
			return ERROR;
		}
		return SUCCESS;
		
		
	}

}
