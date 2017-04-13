package com.action;

import dao.PersonManage;
import entity.Passenger;


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

public class UpdatePassenger extends ActionSupport{
	
	
	  //乘客ID
    private String passengerID;
    //乘客姓名
    private String passengerName;
    //性别
    private String sex;
    //所属部门
    private String department;
    //电话
    private String phone;
    //地址
    private String address;
    
    //Dao类
    private PersonManage personManage;
    
    private Passenger passenger;

	public String getPassengerID() {
		return passengerID;
	}

	public void setPassengerID(String passengerID) {
		this.passengerID = passengerID;
	}

	public String getPassengerName() {
		return passengerName;
	}

	public void setPassengerName(String passengerName) {
		this.passengerName = passengerName;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
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

	public Passenger getPassenger() {
		return passenger;
	}

	public void setPassenger(Passenger passenger) {
		this.passenger = passenger;
	}
	
	public String execute(){
		
		try{
			
			passenger=personManage.QueryOnePassenger(passengerID);
			
			passenger.setLocation(address);
			passenger.setName(passengerName);
			passenger.setPhone(phone);
			passenger.setSex(sex);
			passenger.setDepartment(department);
			
			personManage.UpdatePassenger(passenger);
		}
		catch(Exception e){
			e.printStackTrace();
			return ERROR;
		}
		return SUCCESS;
		
	}


}
