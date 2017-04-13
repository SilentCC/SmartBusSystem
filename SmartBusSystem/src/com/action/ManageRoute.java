package com.action;


import net.sf.json.JSONArray;  
import net.sf.json.JSONObject;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import net.sf.json.JSONObject;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;
import entity.Executives;
import entity.Employee;
import entity.Driver;
import dao.PersonManage;
import dao.SiteManage;

import java.util.*;
import entity.*;

public class ManageRoute extends ActionSupport{
	
	private String routeID;//要规划的路线ID
	
	//Dao类
	private SiteManage siteManage;
	private String result;
	
	private List<Site> siteList;
	public List<Site> getSiteList() {
		return siteList;
	}
	public void setSiteList(List<Site> siteList) {
		this.siteList = siteList;
	}
	public String getRouteID() {
		return routeID;
	}
	public void setRouteID(String routeID) {
		this.routeID = routeID;
	}
	public SiteManage getSiteManage() {
		return siteManage;
	}
	public void setSiteManage(SiteManage siteManage) {
		this.siteManage = siteManage;
	}
	public String getResult() {
		return result;
	}
	public void setResult(String result) {
		this.result = result;
	}
	
	public String execute(){
		
		
		try{
			siteList=siteManage.queryRouteSite(routeID);
			
			JSONObject obj=new JSONObject();
			char a='a';
			obj.put(String.valueOf(a),String.valueOf(siteList.size()));
			a++;
			for(Site s:siteList){
				obj.put(String.valueOf(a), String.valueOf(s.getLongitude())+"?"+String.valueOf(s.getLatitude()));
				a++;
			}
			result=obj.toString();
			System.out.println(result);
		}
		catch(Exception e){
			e.printStackTrace();
			return ERROR;
		}
		
		return SUCCESS;
		
		
	}
	
	

}
