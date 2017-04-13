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

@SuppressWarnings("serial")

public class ManageBusSystem extends ActionSupport {
	//存放所有车辆信息的List
	private List<ScheduledBus> ScheduledBusList;
	//存放所有站点信息的List
	private List<Site> SiteList;
	//存放所有路线信息的List
	private List<Route> RouteList;
	//存放所有排班信息的List
	private List<ArrangeSchedual> ArangeSchedualList;
	//Dao类
	private BusManage busManage;
	private RouteManage routeManage;
	private SchedualManage schedualManage;
	private SiteManage siteManage;
	
	public List<ScheduledBus> getScheduledBusList() {
		return ScheduledBusList;
	}
	public void setScheduledBusList(List<ScheduledBus> scheduledBusList) {
		ScheduledBusList = scheduledBusList;
	}
	public List<Site> getSiteList() {
		return SiteList;
	}
	public void setSiteList(List<Site> siteList) {
		SiteList = siteList;
	}
	public List<Route> getRouteList() {
		return RouteList;
	}
	public void setRouteList(List<Route> routeList) {
		RouteList = routeList;
	}
	public List<ArrangeSchedual> getArangeSchedualList() {
		return ArangeSchedualList;
	}
	public void setArangeSchedualList(List<ArrangeSchedual> arangeSchedualList) {
		ArangeSchedualList = arangeSchedualList;
	}
	public BusManage getBusManage() {
		return busManage;
	}
	public void setBusManage(BusManage busManage) {
		this.busManage = busManage;
	}
	public RouteManage getRouteManage() {
		return routeManage;
	}
	public void setRouteManage(RouteManage routeManage) {
		this.routeManage = routeManage;
	}
	public SchedualManage getSchedualManage() {
		return schedualManage;
	}
	public void setSchedualManage(SchedualManage schedualManage) {
		this.schedualManage = schedualManage;
	}
	public SiteManage getSiteManage() {
		return siteManage;
	}
	public void setSiteManage(SiteManage siteManage) {
		this.siteManage = siteManage;
	}
	
	public String execute(){
		
		System.out.println("ok");
		
		try{
			ScheduledBusList=busManage.QueryAllBus();
			
			SiteList=siteManage.QueryAllSite();
			
			RouteList=routeManage.QueryAllRoute();
			
			ArangeSchedualList=schedualManage.QueryAllArrangeSchedual();
		}
		catch(Exception e){
			
			e.printStackTrace();
		}
		
		return SUCCESS;
	}
	
}
