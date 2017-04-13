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

public class AddSite extends ActionSupport{
	
	//站点信息
	private String siteID;
	private String siteName;
	private double longitude;
	private double latitude;
	private String result;
	
	
	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public double getLongitude() {
		return longitude;
	}

	public void setLongitude(double longitude) {
		this.longitude = longitude;
	}

	public double getLatitude() {
		return latitude;
	}

	public void setLatitude(double latitude) {
		this.latitude = latitude;
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


	public SiteManage getSiteManage() {
		return siteManage;
	}

	public void setSiteManage(SiteManage siteManage) {
		this.siteManage = siteManage;
	}
	
	public String execute() throws IOException{
		
		Site site;
		site=new Site(siteID,"123",siteName,"123",longitude,latitude);
		//Ajax向后台传送Json格式的数据；
		//查看是否添加站点成功
		System.out.println(siteID+" "+siteName+" "+longitude+" "+latitude);
		if(siteManage.QuerySite(siteID)==true){
			result = "{\"add\":\"fail\"}";  
			
		}
		
		else if(siteManage.AddSite(site)==0){
			
			System.out.println("ok");
			result = "{\"add\":\"fail\"}";  
			
		
		}
		else 
		{
			System.out.println("ok");
			result = "{\"add\":\"success\"}";  
		}
		
		return SUCCESS;
	
}
}
