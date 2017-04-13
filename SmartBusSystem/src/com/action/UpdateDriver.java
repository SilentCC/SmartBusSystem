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
public class UpdateDriver extends ActionSupport{
	
	 
     //司机ID
     private String driverID;
     private String driverName;
     private String sex;
     private String phone;
     
     //DAO类
     private PersonManage personManage;
     
     private Driver driver;

	public String getDriverID() {
		return driverID;
	}

	public void setDriverID(String driverID) {
		this.driverID = driverID;
	}

	public String getDriverName() {
		return driverName;
	}

	public void setDriverName(String driverName) {
		this.driverName = driverName;
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

	public PersonManage getPersonManage() {
		return personManage;
	}

	public void setPersonManage(PersonManage personManage) {
		this.personManage = personManage;
	}

	public Driver getDriver() {
		return driver;
	}

	public void setDriver(Driver driver) {
		this.driver = driver;
	}
	
	public String execute(){
		
		try{
			driver=personManage.QueryOneDriver(driverID);
			
			driver.setDriverName(driverName);
			driver.setPhone(phone);
			driver.setSex(sex);
			
			personManage.UpdateDriver(driver);
		}
		catch(Exception e){
			
			e.printStackTrace();
			return ERROR;
		}
		
		return SUCCESS;
		
	}
     
	

   
}
