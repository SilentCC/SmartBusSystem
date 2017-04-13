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

public class UpdateExecutives extends ActionSupport{
	
	//行政人员的ID
	private String executiveID;
	//行政人员的姓名
	private String executiveName;
	//性别
	private String sex;
	//电话
	private String phone;
	//地址
	private String address;
   
	//Dao类
	private PersonManage personManage;
	
	private Executives executives;

	public Executives getExecutives() {
		return executives;
	}

	public void setExecutives(Executives executives) {
		this.executives = executives;
	}

	public String getExecutiveID() {
		return executiveID;
	}

	public void setExecutiveID(String executiveID) {
		this.executiveID = executiveID;
	}

	public String getExecutiveName() {
		return executiveName;
	}

	public void setExecutiveName(String executiveName) {
		this.executiveName = executiveName;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public PersonManage getPersonManage() {
		return personManage;
	}

	public void setPersonManage(PersonManage personManage) {
		this.personManage = personManage;
	}
	
	public String execute(){
		
		try{
			executives=personManage.QueryOneExecutives(executiveID);
			
			executives.setExecutiveName(executiveName);
			executives.setPhone(phone);
			executives.setSex(sex);
			executives.setAddress(address);
			
			personManage.UpdateExecutive(executives);
		}
		catch(Exception e){
			e.printStackTrace();
			return ERROR;
			
		}
		
		return SUCCESS;
	}
	
	
	

}
