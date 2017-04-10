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

public class AddDriver extends ActionSupport{
	
	//司机属性
	private String driverID;
	private String driverName;
	//Dao类
	
	private PersonManage personManage;
	
	public PersonManage getPersonManage() {
		return personManage;
	}
	public void setPersonManage(PersonManage personManage) {
		this.personManage = personManage;
	}
	public String getDriverName() {
		return driverName;
	}
	public void setDriverName(String driverName) {
		this.driverName = driverName;
	}

	private String pwd;
	private String phone;
	private String sex;
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getDriverID() {
		return driverID;
	}
	public void setDriverID(String driverID) {
		this.driverID = driverID;
	}
	
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	public String execute(){
		
		Driver driver;
		driver=new Driver(driverID,pwd,driverName,sex,phone);
		
		if(personManage.AddDriver(driver)==1)
			return SUCCESS;
		else
			return ERROR;
	}

}
