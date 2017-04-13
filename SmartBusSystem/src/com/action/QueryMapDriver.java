package com.action;


import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

import entity.ArrangeSchedual;
import entity.Executives;
import entity.Employee;
import entity.Driver;
import dao.*;

import java.util.*;

import entity.*;

@SuppressWarnings("serial")

public class QueryMapDriver extends ActionSupport{
	
	//存放所有排班信息的List
	private List<ArrangeSchedual> ArangeSchedualList;
	
	private SchedualManage schedualManage;

	public List<ArrangeSchedual> getArangeSchedualList() {
		return ArangeSchedualList;
	}

	public void setArangeSchedualList(List<ArrangeSchedual> arangeSchedualList) {
		ArangeSchedualList = arangeSchedualList;
	}

	public SchedualManage getSchedualManage() {
		return schedualManage;
	}

	public void setSchedualManage(SchedualManage schedualManage) {
		this.schedualManage = schedualManage;
	}
	
	public String execute(){
		
		try{
		
		ArangeSchedualList=schedualManage.QueryAllArrangeSchedual();
		}
		catch(Exception e){
			
			e.printStackTrace();
			return ERROR;
		}
		return SUCCESS;
	}

}
