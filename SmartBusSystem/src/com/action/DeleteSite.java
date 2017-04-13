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

public class DeleteSite extends ActionSupport{
	
	//要删除站点的id
	private String siteID;
	
	//Dao类
	private SiteManage siteManage;
	
	private String result;

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
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
	
	
	public String execute(){
		
		//一定可以删除成功
		siteManage.DeleteSite(siteID);
		
		result = "{\"delet\":\"success\"}";  
		return SUCCESS;
	}
	

}
