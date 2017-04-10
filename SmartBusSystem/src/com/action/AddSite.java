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

public class AddSite extends ActionSupport{
	
	//站点信息
	private String siteID;
	private String routeID;
	private String siteName;
	private String arrivalTime;
	private String sequence;
	private String passageNum;
	
	//Dao类
	private SiteManage siteManage;

	public String getSiteID() {
		return siteID;
	}

	public void setSiteID(String siteID) {
		this.siteID = siteID;
	}

	public String getRouteID() {
		return routeID;
	}

	public void setRouteID(String routeID) {
		this.routeID = routeID;
	}

	public String getSiteName() {
		return siteName;
	}

	public void setSiteName(String siteName) {
		this.siteName = siteName;
	}

	public String getArrivalTime() {
		return arrivalTime;
	}

	public void setArrivalTime(String arrivalTime) {
		this.arrivalTime = arrivalTime;
	}

	public String getSequence() {
		return sequence;
	}

	public void setSequence(String sequence) {
		this.sequence = sequence;
	}

	public String getPassageNum() {
		return passageNum;
	}

	public void setPassageNum(String passageNum) {
		this.passageNum = passageNum;
	}

	public SiteManage getSiteManage() {
		return siteManage;
	}

	public void setSiteManage(SiteManage siteManage) {
		this.siteManage = siteManage;
	}
	
	public String execute(){
		
		Site site;
		site=new Site(routeID,siteName,arrivalTime,sequence,passageNum);
		if(siteManage.AddSite(site)==1)
			return SUCCESS;
		else
			return ERROR;
			
	}

}
