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
	
	public String execute() throws IOException{
		
		Site site;
		site=new Site(routeID,siteName,arrivalTime,sequence,passageNum);
		
		//向前台
				HttpServletResponse response=ServletActionContext.getResponse();
				//设置弹出的格式
				response.setContentType("text/html;charset=UTF-8");
		        response.setCharacterEncoding("UTF-8");
		        //防止弹出的信息出现乱码
		        PrintWriter out = response.getWriter();
			
				//根据数据库返回结果，弹出相应的界面
		        
		        //如果已经存在ExecutivesID
		if(siteManage.QuerySite(siteID)==true){
			
			out.print("<script>alert('添加失败！')</script>");
			out.flush();
			
			
			return INPUT;
		}
		else if(siteManage.AddSite(site)==1)
			return SUCCESS;
		else
			return ERROR;
			
	}

}
