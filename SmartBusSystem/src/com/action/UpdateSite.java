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

import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

import entity.*;
public class UpdateSite extends ActionSupport{
	
	private String siteID;
	private String siteName;
	private String routeID;
	private Site site;
	
	private String result;
	
	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public Site getSite() {
		return site;
	}

	public void setSite(Site site) {
		this.site = site;
	}

	//Dao类
	private SiteManage siteManage;

	public String getSiteID() {
		return siteID;
	}

	public void setSiteID(String siteID) {
		this.siteID = siteID;
	}

	public String getSiteName() {
		return siteName;
	}

	public void setSiteName(String siteName) {
		this.siteName = siteName;
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
	
	public String execute(){
		
		try{
		site=siteManage.QueryOneSite(siteID);
		if(routeID!=null)
			site.setRouteID(routeID);
		if(siteName!=null)
			site.setSiteName(siteName);
		
		siteManage.UpdateSite(site);
		}
		catch(Exception e)
		{
			System.out.println(e);
			return ERROR;
		}
		
		result = "{\"login\":\"success\"}"; 
		return SUCCESS;
		
		
	}
	

}
