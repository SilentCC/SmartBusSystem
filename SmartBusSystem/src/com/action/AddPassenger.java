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
public class AddPassenger extends ActionSupport{
	
	//定义要乘客的信息
	
	private String passengerID;
	
	private String location;
	private String name;
	private String pwd;
	private String sex;
	
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




	private String phone;
	
	//Dao类
	private PersonManage personManage;
	
	
	public String getPwd() {
		return pwd;
	}



	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getPassengerID() {
		return passengerID;
	}


	public void setPassengerID(String passengerID) {
		this.passengerID = passengerID;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}




	public String execute(){
		
		Passenger passenger;
		passenger=new Passenger(passengerID,location,pwd,name,sex,phone);		
		
		if(personManage.AddPassenger(passenger)==1)
			return ERROR;
		else
			return SUCCESS;	
	}	

}
