package com.action;

import net.sf.json.JSONArray;  
import net.sf.json.JSONObject;

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

public class QueryOneSite extends ActionSupport{
	
	private String siteID;
	private SiteManage siteManage;
	private String result;
	private List<Site> siteList;

	
	public List<Site> getSiteList() {
		return siteList;
	}
	public void setSiteList(List<Site> siteList) {
		this.siteList = siteList;
	}
	public String getSiteID() {
		return siteID;
	}
	public void setSiteID(String siteID) {
		this.siteID = siteID;
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
		
		
		
	
		Site site=siteManage.QueryOneSite(siteID);
		//List格式转换Json
	
	
		
	
		JSONObject obj=new JSONObject();
		obj.put("routeID", site.getRouteID());
		obj.put("siteName",site.getSiteName());
		result=obj.toString();
	
		
		return SUCCESS;
}
	
	
	

}
