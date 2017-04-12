package com.action;

import net.sf.json.JSONArray;  
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

public class QuerySite extends ActionSupport {
	
	//存放站点的表
	private List<Site> siteList;
	
	//Dao类
	private SiteManage siteManage;
	
	private String result;

	public String getResult() {
		return result;
	}

	public void setResult(String result) {
		this.result = result;
	}

	public SiteManage getSiteManage() {
		return siteManage;
	}

	public void setSiteManage(SiteManage siteManage) {
		this.siteManage = siteManage;
	}

	public List<Site> getSiteList() {
		return siteList;
	}

	public void setSiteList(List<Site> siteList) {
		this.siteList = siteList;
	}
	
	public String execute(){
		
		try{
			siteList=siteManage.QueryAllSite();
		}
		catch(Exception e){
			
			e.printStackTrace();
		}
		
		//List格式转换Json
		JSONArray json=JSONArray.fromObject(siteList);
		System.out.println(json.toString());
		
		result=json.toString();
		
		return SUCCESS; 
				
	
		
	}
	


}
