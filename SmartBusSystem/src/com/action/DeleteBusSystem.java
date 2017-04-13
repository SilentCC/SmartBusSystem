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

public class DeleteBusSystem extends ActionSupport{
	
	//删除的类别
	private String identity;
	//要删除的种类的ID列表
	private String idList;
	//Dao类
	private BusManage busManage;
	private RouteManage routeManage;
	private SchedualManage schedualManage;
	private SiteManage siteManage;
	
	
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
	public String getIdList() {
		return idList;
	}
	public void setIdList(String idList) {
		this.idList = idList;
	}
	public String getIdentity() {
		return identity;
	}
	public void setIdentity(String identity) {
		this.identity = identity;
	}
	
	public String execute(){
		
		boolean ans=true;
		//定义List存储ID
		List<String> name=new ArrayList<String>();
		//正则表达式，分解idList
		int l=idList.length();
		//临时字符串
		String na="";
		for(int i=0;i<l;i++)
		{
			if(idList.charAt(i)=='?'){
				name.add(na);
				na="";
			}
			else{
				na+=idList.charAt(i);
			}
		}
		if(na!="")
			name.add(na);
		
		System.out.println(identity);
		//根据身份的不同，调用不同的函数
		if(identity.equals("Bus")){
			 
			for(String s:name)
			busManage.DeleteBus(s);
		}
		
		else if(identity.equals("Schedual")){
			
			for(String s:name)
				schedualManage.DeleteSchedual(s);
		}
		
		else if(identity.equals("Route")){
			
			for(String s:name)
				routeManage.DeleteRoute(s);
		}
		
		else if(identity.equals("Site")){
			
			for(String s:name)
				siteManage.DeleteSite(s);
		}
		
		return SUCCESS;
		
	}

}
